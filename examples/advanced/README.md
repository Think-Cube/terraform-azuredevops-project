# Example: Advanced — Azure DevOps Project

Private Scrum project with all five feature areas enabled.

```hcl
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
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ado_project"></a> [ado\_project](#module\_ado\_project) | github.com/Think-Cube/terraform-azuredevops-project | v1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
