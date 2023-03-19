variable "kubernetes_service_name" {
  type = string
  default = "aks-001-IA-Python"
}

variable "kunernetes_service_dnsprefix" {
  type = string
  default = "aksiapython001"
}

variable "kubernetes_service_poolname" {
  type = string
  default = "aksnode-001-IA-Python"
}

variable "kubernetes_service_nodesize" {
  type = string
  default = "Standard_B2s"
}

variable "kubernetes_service_identity" {
  type = string
  default = "SystemAssigned"
}

variable "kubernetes_service_tag" {
  type = string
  default = "test"
}