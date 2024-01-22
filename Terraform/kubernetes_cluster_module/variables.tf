#tfvars
variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}

variable "acr_id" {

}


#module
variable "kubernetes_service_name" {
  type    = string
  default = "aks"
}

variable "kunernetes_service_dnsprefix" {
  type    = string
  default = "ask-pert-app"
}

variable "kubernetes_service_poolname" {
  type    = string
  default = "aksnode001"
}

variable "kubernetes_service_nodesize" {
  type    = string
  default = "Standard_B2s"
}

variable "kubernetes_service_identity" {
  type    = string
  default = "SystemAssigned"
}

variable "kubernetes_service_tag" {
  type    = string
  default = "dev2"
}

variable "name-prefix" {
  type = string
}

variable "role_definition_name" {
  type    = string
  default = "acrRole"
}