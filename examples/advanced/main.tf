module "ado_project" {
  source = "github.com/Think-Cube/terraform-azuredevops-project?ref=v1.0.0"

  name               = "myapp-platform"
  description        = "Platform engineering project — infrastructure, pipelines and shared libraries"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Scrum"

  features = {
    boards       = "enabled"
    repositories = "enabled"
    pipelines    = "enabled"
    testplans    = "enabled"
    artifacts    = "enabled"
  }
}
