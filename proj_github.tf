resource "github_repository" "proj_github" {
  name        = var.project_name
  description = "GKE example"
  visibility  = "public"
}
