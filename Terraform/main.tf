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

module "resource_group" {
  source = "./resource_group"
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