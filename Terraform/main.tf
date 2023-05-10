module "resource_group_main" {
  source                  = "./azure_resource_group"
  resource_group_name     = local.rg-name
  resource_group_location = var.resource_group_location
}

module "storage_account" {
  source                  = "./azure_storage_account"
  resource_group_name     = module.resource_group_main.rg_name
  resource_group_location = module.resource_group_main.rg_location
  depends_on = [
    module.resource_group_main
  ]
}

module "container_registry" {
  source                  = "./container_registry"
  resource_group_name     = module.resource_group_main.rg_name
  resource_group_location = module.resource_group_main.rg_location
  depends_on = [
    module.resource_group_main
  ]
}

module "kubernetes_cluster" {
  source                  = "./kubernetes_cluster_module"
  resource_group_name     = module.resource_group_main.rg_name
  resource_group_location = module.resource_group_main.rg_location
  depends_on = [
    module.resource_group_main
  ]
}