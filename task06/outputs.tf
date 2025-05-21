output "sql_server_fqdn" {
  value       = module.sql.sql_server_fqdn
  description = "Fully qualified domain name of the SQL Server"
}

output "sql_connection_string" {
  value       = module.sql.sql_connection_string
  description = "ADO.NET SQL connection string"
  sensitive   = true
}
output "app_hostname" {
  description = "Hostname of the Web App from webapp module"
  value       = module.webapp.app_hostname
}
