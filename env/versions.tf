terraform {
  required_version = ">= 0.14.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 5.26.0"
    }
  }
}