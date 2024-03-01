provider "google" {
#   version = "= 3.55.0"
  credentials = var.sa_key
  #project = var.project_id
}
 
variable "sa_key" {
  default =  ""
}
resource "google_storage_bucket" "example_bucket" {
  name          = "your-bucket-name"
  location      = "us-central1"
  force_destroy = true

  versioning {
    enabled = true
  }
}
