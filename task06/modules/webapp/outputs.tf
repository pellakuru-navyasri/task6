output "app_hostname" {
  description = "Hostname of the Web App"
  value       = azurerm_linux_web_app.this.default_hostname
} 