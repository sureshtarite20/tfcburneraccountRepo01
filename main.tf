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

  subscription_id = "3a6301fb-d5bf-4646-bd89-d506e7c3f2dd"
  client_id       = "08a4808f-de8a-4fa2-828c-5ce3ad624046"
  // client_certificate_path     = var.client_certificate_path
  //client_certificate_password = "24Y8Q~SopAxXsAHKVx9QeQiZTTEFYdKnCzbFPbR5"
  client_secret = "24Y8Q~SopAxXsAHKVx9QeQiZTTEFYdKnCzbFPbR5"
  tenant_id                   = "d52c9ea1-7c21-47b1-82a3-33a74b1f74b8"
  
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources4"
  location = "East US"
}




resource "azurerm_resource_group" "example" {
  name     = "example-resources3"
  location = "East US"
}



