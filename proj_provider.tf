# google provider
provider "google" {
  credentials = file("./eastern-thinker-386510-7fe29fa4baf4.json")
  project     = "eastern-thinker-386510"
  region      = "australia-southeast1"
  zone        = "australia-southeast1-a"
}

# terraform code for github provider
provider "github" {
  token = var.github_token
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.64.0"
    }

    github = {
      source  = "integrations/github"
      version = "5.0"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }
  }
}
