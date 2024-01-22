# Define the Kubernetes cluster
resource "azurerm_kubernetes_cluster" "kubeDeploy" {
  name                = "${var.name-prefix}-${var.kubernetes_service_name}"
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
  value     = azurerm_kubernetes_cluster.kubeDeploy.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.kubeDeploy.kube_config_raw

  sensitive = true
}

#Attaching a Container Registry to a Kubernetes Cluster
resource "azurerm_role_assignment" "acrRoleAssign" {
  principal_id                     = azurerm_kubernetes_cluster.kubeDeploy.kubelet_identity[0].object_id
  role_definition_name             = var.role_definition_name
  scope                            = var.acr_id
  skip_service_principal_aad_check = true
}