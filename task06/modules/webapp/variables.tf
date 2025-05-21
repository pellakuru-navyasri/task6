variable "asp_name" {
  description = "Name of the App Service Plan"
  type        = string
}

variable "asp_sku" {
  description = "App Service Plan SKU tier"
  type        = string
}


variable "app_name" {
  description = "Name of the Web App"
  type        = string
}

variable "app_dotnet_version" {
  description = "Dotnet version for the Web App"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
}

variable "rg_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "sql_connection_string" {
  description = "SQL DB Connection String"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Tags to apply"
  type        = map(string)
}
