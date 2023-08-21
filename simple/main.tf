terraform {
  required_version = "~> 1.5.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = " 3.69" # for production-grade
    }
  }
}
provider "azurerm" {
  features {}
  tenant_id = var.tenant_id
  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}





