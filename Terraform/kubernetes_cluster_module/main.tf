# Define the Kubernetes cluster
resource "azurerm_kubernetes_cluster" "example" {
  name                = var.kubernetes_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name

  # In English:
  # Define the properties of the Kubernetes cluster
  # In Spanish:
  # Define las propiedades del clúster de Kubernetes
}