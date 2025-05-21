resource "random_password" "sql_admin_password" {
  length  = 16
  special = true
}

resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_username
  administrator_login_password = random_password.sql_admin_password.result
  tags                         = var.tags
}


resource "azurerm_mssql_firewall_rule" "allow_azure" {
  name             = "AllowAzureServices"
  server_id        = azurerm_mssql_server.sql_server.id
  start_ip_address = "203.170.48.2"
  end_ip_address   = "203.170.48.2"
}

resource "azurerm_mssql_firewall_rule" "allow_ip" {
  name             = var.sql_fwr_name
  server_id        = azurerm_mssql_server.sql_server.id
  start_ip_address = var.allowed_ip_address
  end_ip_address   = var.allowed_ip_address
}

resource "azurerm_mssql_database" "sql_db" {
  name      = var.sql_database_name
  server_id = azurerm_mssql_server.sql_server.id
  sku_name  = var.sql_sku
  #collation      = "SQL_Latin1_General_CP1_CI_AS"
  tags = var.tags
}

resource "azurerm_key_vault_secret" "admin_username" {
  value        = var.sql_admin_username
  name         = var.sql_admin_secret_name
  key_vault_id = var.key_vault_id
}

resource "azurerm_key_vault_secret" "admin_password" {
  name         = var.sql_admin_secret_password
  value        = random_password.sql_admin_password.result
  key_vault_id = var.key_vault_id
}
