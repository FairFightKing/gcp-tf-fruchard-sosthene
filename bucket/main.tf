resource "google_storage_bucket" "bucket" {
  name                        = var.bucket_name
  location                    = "EU"
  force_destroy               = true
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "archive" {
  name   = "${var.function_name}.zip"
  bucket = google_storage_bucket.bucket.name
  source = "./golang/src/${var.function_name}.zip"
}

output "source_archive_bucket" {
  value = google_storage_bucket.bucket.name
}

output "source_archive_object" {
  value = google_storage_bucket_object.archive.name
}
