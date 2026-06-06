terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = "project-1f7ee837-c683-48f1-bba"
  region  = "asia-south1"
}

resource "google_storage_bucket" "my_bucket" {
  name          = "sourav-0101"
  location      = "ASIA-SOUTH1"
  force_destroy = false

  uniform_bucket_level_access = true
}
