terraform {
  required_providers {
    acme = {
      source  = "vancluever/acme"
      version = "2.11.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "= 4.0.4"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}