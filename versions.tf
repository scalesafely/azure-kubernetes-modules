terraform {
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.30.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.30.0"
    }
    acme = {
      source  = "vancluever/acme"
      version = "2.11.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "= 4.0.4"
    }
    mysql = {
      source  = "petoju/mysql"
      version = "~> 3.0.34"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  features {}
  skip_provider_registration = true
}
