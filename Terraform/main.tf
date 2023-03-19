# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstatebackendlogsacc"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

module "storage_account" {
  source = "./azure_storage_account"
}

module "container_registry" {
  source = "./container_registry"
}

module "kubernetes_cluster" {
  source = "./kubernetes_cluster_module"
}