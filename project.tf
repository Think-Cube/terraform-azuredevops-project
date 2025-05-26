resource "azuredevops_project" "main" {
  for_each           = var.projects
  name               = each.value.proj_name
  description        = each.value.proj_description
  visibility         = each.value.proj_visibility
  version_control    = each.value.proj_vcs
  work_item_template = each.value.proj_wi_template
}
