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

variable "environnement" {
  description = "The deployement environnement"
  type = string
}