resource "google_artifact_registry_repository" "gcr_repo" {
  location      = "australia-southeast1"
  repository_id = "${var.project_id}-repo"
  format        = "DOCKER"
}
