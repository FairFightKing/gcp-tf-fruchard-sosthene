resource "google_bigquery_dataset" "bigquery_dataset" {
  dataset_id                  = "${var.dataset}_${random_id.server.id}"
  friendly_name               = "My exemple dataset"
  description                 = "This is my BigQuery dataset :)"
  location                    = "EU"
  default_table_expiration_ms = 3600000

}

resource "google_bigquery_table" "bigquery_table" {
  dataset_id = "${var.dataset}_${random_id.server.id}"
  table_id   = var.table

  schema = jsonencode([
    {
      "name" : "name",
      "type" : "STRING",
      "mode" : "NULLABLE",
      "description" : "The username"
    },
    {
      "name" : "custom_field",
      "type" : "STRING",
      "mode" : "NULLABLE",
      "description" : "field for custom data"
    }
  ])


}

resource "random_id" "server" {
  byte_length = 8
}
