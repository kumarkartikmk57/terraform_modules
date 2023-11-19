terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.6.0"
    }
}
#  backend "gcs" {
#    bucket  = "cosmic-descent-405605-state"
#    prefix  = "terraform/state"
#  }
}

provider "google" {
  project     = "cosmic-descent-405605"
  region      = "us-central1"
}
