# définir des variables

variable "subscription_id" {
  description = "The Azure subscribtion ID"
  type = string
  sensitive = true
}

variable "project" {
  description = "The project name"
  type = string
}

variable "environment" {
  description = "The deployement environment"
  type = string
}

variable "resource_group_name" {
  description = "The resource group name"
  type = string
}

variable "mssql_login" {
  description = "SQL Server admin login"
  type        = string
  sensitive   = true
}

variable "rabbitmq_login" {
  description = "RabbitMQ admin login"
  type        = string
  sensitive   = true
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
}
