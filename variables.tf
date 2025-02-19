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

variable "key_permissions" {
  type        = list(string)
  description = "List of key permissions."
  default     = ["List", "Create", "Delete", "Get", "Purge", "Recover", "Update", "GetRotationPolicy", "SetRotationPolicy"]
}

variable "secret_permissions" {
  type        = list(string)
  description = "List of secret permissions."
  default     = ["Set"]
}