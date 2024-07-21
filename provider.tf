terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.111.0"
    }

  }
  backend "azurerm" {
    resource_group_name  = "ForTerraformPractice"
    storage_account_name = "tfpractice"
    container_name       = "svtfpractice"
    key                  = "sv.terraform.tfstate" # This is the name of the state file
  }
}


provider "azurerm" {
  features {}
}
