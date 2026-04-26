terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-acmp-final"
    storage_account_name = "acmp2400storageaccount"
    container_name = "big-tf-state-acmp2400"
    key = "stage1.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurem_container_registry" "arkasahoo-acr" {
  name = "acrarkasahooacmp2400"
  resource_group_name = "rg-arkasahoo"
  location = "Central US"
  sku = "Basic"
  admin_enabled = false
}