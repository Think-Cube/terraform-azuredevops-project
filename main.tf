resource "azuredevops_project" "main" {
  name               = var.name
  description        = var.description
  visibility         = var.visibility
  version_control    = var.version_control
  work_item_template = var.work_item_template

  dynamic "features" {
    for_each = var.features != null ? [var.features] : []
    content {
      boards       = lookup(features.value, "boards", null)
      repositories = lookup(features.value, "repositories", null)
      pipelines    = lookup(features.value, "pipelines", null)
      testplans    = lookup(features.value, "testplans", null)
      artifacts    = lookup(features.value, "artifacts", null)
    }
  }
}
