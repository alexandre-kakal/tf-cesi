# rédiger le code d'infra principal
locals {
  base_name = "${var.project}-${var.environnement}"
  case_sensitive_base_name = lower(replace(local.base_name, "-", ""))
  case_sensitive_unique_base_name = lower(replace("${local.base_name}${random_string.storage_account_suffix.result}", "-", ""))

}

# resource "type d'indentifiant" "identifiant" {}
resource "azurerm_log_analytics_workspace" "main" {
  # convention de nommage : préfixe-projet-environnement
  name                = "log-${local.base_name}"
  resource_group_name = data.azurerm_resource_group.main.name
  location            = data.azurerm_resource_group.main.location
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource random_string "storage_account_suffix" {
  length = 6
  special = false
  upper = false
  numeric = false
}

resource "azurerm_storage_account" "main" {
  name                     = "st${local.case_sensitive_unique_base_name}"
  resource_group_name      = data.azurerm_resource_group.main.name
  location                 = data.azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# pour créer plusieurs fois la même resource avec un id unique
# resource "azurerm_storage_account" "main" {
#   count = 3
#   name                     = "st${local.case_sensitive_unique_base_name}${count.index}"
#   resource_group_name      = data.azurerm_resource_group.main.name
#   location                 = data.azurerm_resource_group.main.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }