provider "azurerm" {
  version = "2.0"
}

# Define the Kubernetes cluster
resource "azurerm_kubernetes_cluster" "example" {
  name                = var.kubernetes_service_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  default_node_pool {
    name       = var.kubernetes_service_poolname
    node_count = 1
    vm_size    = var.kubernetes_service_nodesize
  }

  identity {
    type = var.kubernetes_service_identity
  }

  tags = {
    Environment = var.kubernetes_service_tag
  }
}
