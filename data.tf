# définir les sources de données

data "azurerm_resource_group" "main" {
  # ce nom doit être le même que le groupe de ressource défini dans Azure
  name = "rg-maalsi-24-student1"
}