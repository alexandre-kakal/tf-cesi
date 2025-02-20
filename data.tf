# définir les sources de données
data "azurerm_resource_group" "main" {
  # ce nom doit être le même que le groupe de ressource défini dans Azure
  name = var.resource_group_name
}

data "azurerm_client_config" "current" {}

data "azurerm_container_registry" "main" {
  name                = var.acr_name
  resource_group_name = data.azurerm_resource_group.main.name
}
