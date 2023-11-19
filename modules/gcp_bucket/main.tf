resource "google_storage_bucket" "static-site" {
  name          = "${var.projectid}-${var.bucket_name}"
  location      = var.location
  force_destroy = true

  uniform_bucket_level_access = true
  labels = {
    "app" = "nginx"
  }
}