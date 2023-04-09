# Azure Provider source and version being used
provider "azurerm" {
  features {}
}

module "resource_group" {
  source                  = "./azure_resource_group"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

module "storage_account" {
  source                  = "./azure_storage_account"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  depends_on = [
    module.resource_group
  ]
}

module "container_registry" {
  source                  = "./container_registry"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  depends_on = [
    module.resource_group
  ]
}

module "kubernetes_cluster" {
  source                  = "./kubernetes_cluster_module"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  depends_on = [
    module.resource_group
  ]
}