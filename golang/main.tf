resource "google_cloudfunctions_function" "function" {
  name        = var.function_name
  description = "Golang Hello World Function"
  runtime     = "go120"

  available_memory_mb   = 128
  source_archive_bucket = var.bucket_name
  source_archive_object = var.source_archive_object
  trigger_http          = true
  entry_point           = "HelloGet"
}

resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}
