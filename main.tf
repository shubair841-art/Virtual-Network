terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.10.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "shk1" {
  name     = "rg-shubair-1"
  location = "Central India"
}


resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-shubair"
  location            = azurerm_resource_group.shk1.location
  resource_group_name = azurerm_resource_group.shk1.name
  address_space       = ["10.0.0.0/16"]
}

