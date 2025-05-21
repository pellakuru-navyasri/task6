variable "sql_server_name" {
  type        = string
  description = "The name of the Azure SQL Server to be created."
}

variable "sql_database_name" {
  type        = string
  description = "The name of the Azure SQL Database to be created inside the SQL Server."
}

variable "sql_sku" {
  type        = string
  description = "The performance and pricing tier (SKU) for the Azure SQL Database (e.g., S2, P1)."
}

variable "sql_fwr_name" {
  type        = string
  description = "The name of the custom SQL firewall rule to allow a specific IP address."
}

variable "sql_admin_username" {
  type        = string
  description = "The administrator login name for the Azure SQL Server."
}

variable "location" {
  type        = string
  description = "The Azure region where the SQL Server and Database will be deployed."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the existing Azure Resource Group where the SQL resources will be created."
}

variable "allowed_ip_address" {
  type        = string
  description = "The public IP address that should be allowed through the SQL Server firewall for verification or local access."
}

variable "key_vault_id" {
  type        = string
  description = "The ID of the existing Azure Key Vault where SQL admin credentials will be stored as secrets."
}

variable "sql_admin_secret_name" {
  type        = string
  description = "The name of the Key Vault secret that stores the SQL admin username."
}

variable "sql_admin_secret_password" {
  type        = string
  description = "The name of the Key Vault secret that stores the SQL admin password."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of tags to apply to all resources for cost tracking, ownership, or environment labeling."
}
