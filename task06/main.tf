
resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.location
  tags     = var.tags
}
data "azurerm_client_config" "current" {}
data "azurerm_key_vault" "existing_kv" {
  name                = var.kv_name
  resource_group_name = var.kv_rg_name
}

module "sql" {
  source                    = "./modules/sql"
  sql_server_name           = local.sql_server_name
  sql_database_name         = local.sql_db_name
  sql_sku                   = var.sql_sku
  sql_fwr_name              = var.sql_fwr_name
  sql_admin_username        = var.sql_admin_username
  location                  = var.location
  resource_group_name       = local.rg_name
  allowed_ip_address        = var.allowed_ip_address
  key_vault_id              = data.azurerm_key_vault.existing_kv.id
  sql_admin_secret_name     = var.sql_admin_secret_name
  sql_admin_secret_password = var.sql_admin_secret_password
  tags                      = var.tags
  depends_on                = [azurerm_resource_group.rg]
}
module "webapp" {
  source = "./modules/webapp"

  app_name              = local.app_name
  asp_name              = local.asp_name
  asp_sku               = var.asp_sku
  location              = var.location
  rg_name               = local.rg_name
  sql_connection_string = module.sql.sql_connection_string
  app_dotnet_version    = var.app_dotnet_version
  tags                  = var.tags
  depends_on            = [azurerm_resource_group.rg]
}


