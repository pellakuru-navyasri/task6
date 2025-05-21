output "sql_server_fqdn" {
  value       = module.sql.sql_server_fqdn
  description = "Fully qualified domain name of the SQL Server"
}

output "sql_connection_string" {
  value       = module.sql.sql_connection_string
  description = "ADO.NET SQL connection string"
  sensitive   = true
}
