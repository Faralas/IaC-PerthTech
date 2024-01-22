variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}

variable "name-prefix" {
  type = string
}

variable "key_vault_name" {
  type    = string
  default = "kvPertTech"
}

variable "sku_value" {
  type    = string
  default = "standard"
}