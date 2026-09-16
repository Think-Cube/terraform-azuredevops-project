# Terraform Module — Azure DevOps Project

Provisions an `azuredevops_project` with configurable visibility, version control, work item template, and feature toggles.

## Usage

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

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | ~> 1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_project.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the Azure DevOps project. | `string` | `""` | no |
| <a name="input_features"></a> [features](#input\_features) | Optional map of feature states for the project. Each key is a feature name ('boards', 'repositories', 'pipelines', 'testplans', 'artifacts') and value is 'enabled' or 'disabled'. | `map(string)` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Azure DevOps project. | `string` | n/a | yes |
| <a name="input_version_control"></a> [version\_control](#input\_version\_control) | The version control system used by the project. Valid values are 'Git' or 'Tfvc'. | `string` | `"Git"` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | The visibility of the project. Valid values are 'private' or 'public'. | `string` | `"private"` | no |
| <a name="input_work_item_template"></a> [work\_item\_template](#input\_work\_item\_template) | The work item process template. Common values: 'Agile', 'Scrum', 'CMMI', 'Basic'. | `string` | `"Agile"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created Azure DevOps project. |
| <a name="output_name"></a> [name](#output\_name) | The name of the created Azure DevOps project. |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | The ID of the created Azure DevOps project (alias for id). |
<!-- END_TF_DOCS -->