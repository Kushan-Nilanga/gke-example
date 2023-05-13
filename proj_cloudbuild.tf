# gcp cloudbuild terraform resource with github trigger
resource "google_cloudbuild_trigger" "proj_cloudbuild" {
  name        = "${var.project_name}-trigger"
  description = "GKE example"
  filename    = "cloudbuild.yaml"
  location    = "australia-southeast1"

  trigger_template {
    project_id = var.project_id

    repo_name   = "github.com/${var.project_owner}/${var.project_name}"
    branch_name = "main"
  }
}

