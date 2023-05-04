terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

module "bucket" {
  source        = "./bucket"
  function_name = var.function_name
  bucket_name   = var.bucket_name
}

module "golang" {
  source                = "./golang"
  function_name         = var.function_name
  bucket_name           = module.bucket.source_archive_bucket
  source_archive_object = module.bucket.source_archive_object
  depends_on = [
    module.bucket,
  ]
}

module "bigQuery" {
  source  = "./bigQuery"
  dataset = var.bigQuery_dataset_id
  table   = var.bigQuery_table_id
  depends_on = [
    module.bucket,
    module.golang
  ]
}
