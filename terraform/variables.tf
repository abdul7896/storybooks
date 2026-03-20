variable "project_id" {
  type        = string
  description = "GCP project ID"
  default     = "mystical-moon-490820-m2"
}

variable "region" {
  type        = string
  description = "Default region"
  default     = "europe-west2"
}

variable "github_repo" {
  type        = string
  description = "GitHub org/repo to trust via OIDC"
  default     = "abdul7896/storybooks"
}

variable "github_branches" {
  type        = list(string)
  description = "GitHub branches allowed to assume the CI service account"
  default     = ["master", "dev", "staging", "prod"]
}

variable "github_oidc_pool_id" {
  type        = string
  description = "Workload Identity Pool ID"
  default     = "github-actions"
}

variable "github_oidc_provider_id" {
  type        = string
  description = "Workload Identity Pool Provider ID"
  default     = "github"
}

variable "ci_service_account_id" {
  type        = string
  description = "Service account ID for CI (no domain)"
  default     = "github-actions-ci"
}

variable "ci_service_account_roles" {
  type        = list(string)
  description = "Project roles granted to the CI service account"
  default     = [
    "roles/editor",
    "roles/storage.admin",
  ]
}
