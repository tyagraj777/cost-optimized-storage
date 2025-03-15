output "bucket_name" {
  description = "The name of the created Cloud Storage bucket"
  value       = google_storage_bucket.cost_optimized_bucket.name
}

output "bucket_url" {
  description = "The URL of the created Cloud Storage bucket"
  value       = google_storage_bucket.cost_optimized_bucket.url
}
