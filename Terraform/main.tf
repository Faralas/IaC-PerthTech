data "azurerm_client_config" "current" {}

module "resource_group_main" {
  source                  = "./azure_resource_group"
  resource_group_name     = local.rg-name
  resource_group_location = var.resource_group_location
}

module "storage_account" {
  source                  = "./azure_storage_account"
  resource_group_name     = module.resource_group_main.rg_name
  resource_group_location = module.resource_group_main.rg_location
  name-prefix             = local.name-prefix
  depends_on = [
    module.resource_group_main
  ]
}

module "key_vault" {
  source                  = "./azure_key_vault"
  resource_group_name     = module.resource_group_main.rg_name
  resource_group_location = module.resource_group_main.rg_location
  name-prefix             = local.name-prefix
  depends_on = [
    module.resource_group_main
  ]
}

module "container_registry" {
  source                  = "./container_registry"
  resource_group_name     = module.resource_group_main.rg_name
  resource_group_location = module.resource_group_main.rg_location
  name-prefix             = local.name-prefix
  depends_on = [
    module.key_vault
  ]
}

module "kubernetes_cluster" {
  source                  = "./kubernetes_cluster_module"
  resource_group_name     = module.resource_group_main.rg_name
  resource_group_location = module.resource_group_main.rg_location
  name-prefix             = local.name-prefix
  acr_id                  = module.container_registry.acr_id
  depends_on = [
    module.container_registry
  ]
}