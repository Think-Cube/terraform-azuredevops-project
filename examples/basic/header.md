# Example: Basic — Azuredevops Project

Provisions an Azure DevOps Project with configurable features and visibility. Minimal example using required inputs only.

## Usage

```hcl
module "ado_project" {
  source = "../.."

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