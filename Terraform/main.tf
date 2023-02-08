module "resource_group" {
  source = "./resource_group"
  resource_group_name = var.resource_group_name
  resource_group_location = var.resource_group_location
}

module "container_registry" {
  source = "./container_registry"
  resource_group_name = module.resource_group.name
}


module "kubernetes_cluster" {
  source = "./kubernetes_cluster_module"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
}