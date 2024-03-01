provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}

resource "google_storage_bucket" "example_bucket" {
  name          = "your-bucket-name"
  location      = "us-central1"
  force_destroy = true

  versioning {
    enabled = true
  }
}
