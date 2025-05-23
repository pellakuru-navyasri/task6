variable "location" {
  type        = string
  description = "Azure region where all resources will be deployed."
}

variable "key_vault_rg_name" {
  type        = string
  description = "Name of the resource group containing the existing Key Vault."
}

variable "key_vault_name" {
  type        = string
  description = "Name of the existing Key Vault where SQL credentials will be stored."
}

variable "name_prefix" {
  type        = string
  description = "Name of the resource group to be created for the deployment."
}

variable "secret_name_admin" {
  type        = string
  description = "Key Vault secret name where SQL admin username will be stored."
}

variable "secret_name_password" {
  type        = string
  description = "Key Vault secret name where SQL admin password will be stored."
}

variable "sql_admin_username" {
  type        = string
  description = "Admin login name for the SQL Server."
}

variable "sql_db_sku" {
  type        = string
  description = "The SKU (pricing tier) for the SQL Database."
}

variable "firewall_rule_name" {
  type        = string
  description = "Name of the firewall rule to allow connections to the SQL Server."
}

variable "allowed_ip_address" {
  type        = string
  description = "Public IP address to be allowed through SQL Server firewall."
}

variable "dotnet_version" {
  type        = string
  description = "Version of .NET runtime to be used in the web application."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to all resources (e.g., { Creator = 'user@domain.com' })."
}

variable "asp_sku" {
  type        = string
  description = "App Service Plan SKU tier."
}
