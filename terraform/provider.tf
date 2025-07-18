terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "807d385c-fe57-4882-9e48-1bb1077091f1"
  features {
    subscription {
      prevent_cancellation_on_destroy = true
    }
  }
}