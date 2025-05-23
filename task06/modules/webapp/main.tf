resource "azurerm_service_plan" "example" {
  name                = var.asp_name
  resource_group_name = var.rg_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = var.asp_sku
}
resource "azurerm_linux_web_app" "this" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.rg_name
  service_plan_id     = azurerm_service_plan.example.id

  site_config {
    always_on = true
    #linux_fx_version = var.app_dotnet_version
    application_stack {
      dotnet_version = var.app_dotnet_version
    }
  }


  connection_string {
    name  = "DefaultConnection"
    type  = "SQLAzure"
    value = var.sql_connection_string
  }

  tags = var.tags
}
