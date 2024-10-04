terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }
}

provider "azurerm" {
        features {}
}

module "sub1" {
        source = "./subnet"
        subnet_name = "sub1"
        subnet_CIDR = "10.0.1.0/24"
        rg_name =  "rg01"
        vnet-name = "example-network"
}
