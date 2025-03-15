provider "google" {
  project = var.project_id
  region  = var.region
}

# Create a Cloud Storage bucket
resource "google_storage_bucket" "cost_optimized_bucket" {
  name          = var.bucket_name
  location      = var.region
  storage_class = "STANDARD"  # Default storage class

  # Lifecycle rules
  lifecycle_rule {
    action {
      type          = "SetStorageClass"
      storage_class = "NEARLINE"  # Transition to Nearline after 30 days
    }
    condition {
      age = 30  # Transition after 30 days
    }
  }

  lifecycle_rule {
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"  # Transition to Coldline after 60 days
    }
    condition {
      age = 60  # Transition after 60 days
    }
  }

  lifecycle_rule {
    action {
      type          = "SetStorageClass"
      storage_class = "ARCHIVE"  # Transition to Archive after 90 days
    }
    condition {
      age = 90  # Transition after 90 days
    }
  }

  lifecycle_rule {
    action {
      type = "Delete"  # Delete objects after 365 days
    }
    condition {
      age = 365  # Delete after 365 days
    }
  }
}
