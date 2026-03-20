output "ci_service_account_email" {
  value       = google_service_account.ci.email
  description = "Service account for GitHub Actions"
}

output "workload_identity_pool_name" {
  value       = google_iam_workload_identity_pool.github.name
  description = "Full Workload Identity Pool resource name"
}

output "workload_identity_provider_name" {
  value       = google_iam_workload_identity_pool_provider.github.name
  description = "Full Workload Identity Provider resource name"
}
