# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
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