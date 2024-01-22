#tfvars
variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}

#locals
variable "container_registry_name" {
  type    = string
  default = "CR001IAPython"
}

variable "container_registry_sku" {
  type    = string
  default = "Basic"
}

variable "name-prefix" {
  type = string
}