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
  tenant_id = var.tenantID
  subscription_id = var.subscriptionID
  client_id = var.clientID
  client_secret = var.clientSecret
}

resource "azurerm_resource_group" "rg" {
  name     = var.RGName
  location = var.location
}





