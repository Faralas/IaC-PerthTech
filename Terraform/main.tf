module "resource_group" {
  source = "./resource_group"
}

module "container_registry" {
  source = "./container_registry"
}

module "kubernetes_cluster" {
  source = "./kubernetes_cluster_module"
}