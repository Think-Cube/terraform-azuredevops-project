# Example: Terraform Module — Azure DevOps Project

Provisions an `azuredevops_project` with configurable visibility, version control, work item template, and feature toggles.

```hcl
module "ado_project" {
  source = "github.com/Think-Cube/terraform-azuredevops-project?ref=v1.0.0"

  name               = "my-project"
  description        = "Main application project"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Scrum"

  features = {
    boards       = "enabled"
    repositories = "enabled"
    pipelines    = "enabled"
    testplans    = "disabled"
    artifacts    = "enabled"
  }
}
```