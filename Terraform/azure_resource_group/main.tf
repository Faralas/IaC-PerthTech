resource "azurerm_resource_group" "resource_group_main" {
  name     = var.resource_group_name
  location = var.resource_group_location
}