terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = ""
  features {
    subscription {
      prevent_cancellation_on_destroy = true
    }
  }
}