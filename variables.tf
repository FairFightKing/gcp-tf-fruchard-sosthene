variable "region" {
  type        = string
  description = "GCP project region"
  default     = "europe-west1"
}

variable "zone" {
  type        = string
  description = "GCP project zone"
  default     = "europe-west1-d"
}

variable "project_id" {
  type        = string
  description = "GCP project ID"
  sensitive   = true
}

variable "function_name" {
  type        = string
  description = "golang http helloworld function name"
  default     = "hello_world"

}

variable "bucket_name" {
  type        = string
  description = "golang http helloworld function name"
  sensitive   = true
}

variable "bigQuery_dataset_id" {
  type        = string
  description = "GCP bigQuery dataset id"
  default     = "gct_tf_dataset"
}

variable "bigQuery_table_id" {
  type        = string
  description = "GCP bigQuery dataset table id"
  default     = "gct_tf_table"
}
