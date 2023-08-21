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

  subscription_id = var.subscription_id
  client_id       = var.client_id
  // client_certificate_path     = var.client_certificate_path
  //client_certificate_password = "24Y8Q~SopAxXsAHKVx9QeQiZTTEFYdKnCzbFPbR5"
  client_secret = var.client_secret
  tenant_id     = var.tenant_id

}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}




resource "azurerm_resource_group" "example" {
  name     = "example-resources3"
  location = "East US"
}



