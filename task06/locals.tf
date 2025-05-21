locals {
  tags = {
    Creator = var.tags
  }
  rg_name         = var.rg_name
  sql_server_name = var.sql_server_name
  sql_db_name     = var.sql_db_name
  asp_name        = var.asp_name
  app_name        = var.app_name
}
