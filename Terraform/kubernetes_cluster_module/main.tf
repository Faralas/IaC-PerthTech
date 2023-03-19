# Define the Kubernetes cluster
resource "azurerm_kubernetes_cluster" "kubeStep" {
  name                = var.kubernetes_service_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.kunernetes_service_dnsprefix

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

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.kubeStep.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.kubeStep.kube_config_raw

  sensitive = true
}