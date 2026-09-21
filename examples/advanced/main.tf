module "ado_project" {
  source = "../.."

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
