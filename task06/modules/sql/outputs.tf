output "sql_server_fqdn" {
  value       = azurerm_mssql_server.sql_server.fully_qualified_domain_name
  description = "FQDN of the SQL server"
}

output "sql_connection_string" {
  value = format(
    "Server=tcp:%s.database.windows.net,1433;Initial Catalog=%s;Persist Security Info=False;User ID=%s;Password=%s;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;",
    var.sql_server_name,
    var.sql_database_name,
    random_password.sql_admin_password.result
  )
  description = "ADO.NET connection string"
  sensitive   = true
}

output "sql_connection_string_test" {
  description = "Test output to verify sensitive attribute recognition."
  value       = "test-connection-string"
  sensitive   = true
}
