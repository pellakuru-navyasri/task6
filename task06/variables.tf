variable "location" {
  type        = string
  description = "Azure region where all resources will be deployed."
}

variable "kv_rg_name" {
  type        = string
  description = "Name of the resource group containing the existing Key Vault."
}

variable "kv_name" {
  type        = string
  description = "Name of the existing Key Vault where SQL credentials will be stored."
}

variable "rg_name" {
  type        = string
  description = "Name of the resource group to be created for the deployment."
}

variable "sql_admin_secret_name" {
  type        = string
  description = "Key Vault secret name where SQL admin username will be stored."
}

variable "sql_admin_secret_password" {
  type        = string
  description = "Key Vault secret name where SQL admin password will be stored."
}
variable "sql_admin_username" {
  type        = string
  description = "admin login name for the SQL Server "
}

variable "sql_server_name" {
  type        = string
  description = "Name of the Azure SQL Server to be created."
}

variable "sql_db_name" {
  type        = string
  description = "Name of the Azure SQL Database to be created."
}

variable "sql_sku" {
  type        = string
  description = "The SKU (pricing tier) for the SQL Database."
}

variable "sql_fwr_name" {
  type        = string
  description = "Name of the firewall rule to allow connections to the SQL Server."
}

variable "allowed_ip_address" {
  type        = string
  description = "Public IP address to be allowed through SQL Server firewall."
}


variable "asp_name" {
  type        = string
  description = "Name of the App Service Plan to be created."
}


variable "app_name" {
  type        = string
  description = "Name of the Azure Linux Web App to be created."
}

variable "app_dotnet_version" {
  type        = string
  description = "Version of .NET runtime to be used in the web application."
}

variable "tags" {
  type        = string
  description = "Email of the student or user creating the infrastructure (used in resource tags)."
}
variable "asp_sku" {
  description = "App Service Plan SKU tier"
  type        = string
}