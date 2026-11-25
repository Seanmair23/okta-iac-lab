terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "~> 4.0"
    }
  }
}

# Credentials come from the OKTA_* environment variables you set
provider "okta" {}
