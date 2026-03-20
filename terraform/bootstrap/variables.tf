variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  description = "Default region"
  default     = "europe-west2"
}

variable "bucket_location" {
  type        = string
  description = "Bucket location (e.g. EU or europe-west2)"
  default     = "EU"
}
