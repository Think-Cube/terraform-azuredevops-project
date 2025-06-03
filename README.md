## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | 1.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | 1.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_project.main](https://registry.terraform.io/providers/microsoft/azuredevops/1.10.0/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | Name of the Azure DevOps organization under which the projects will be created. | `string` | `"my-azure-devops-org"` | no |
| <a name="input_projects"></a> [projects](#input\_projects) | A map defining the Azure DevOps projects to be created. Each project must include:<br/>  - `proj_name`: The display name of the project.<br/>  - `proj_description`: A short description of the project.<br/>  - `proj_visibility`: Project visibility setting ('private' or 'public').<br/>  - `proj_vcs`: The version control system to use ('Git' or 'Tfvc').<br/>  - `proj_wi_template`: The work item process template ('Agile', 'Scrum', 'CMMI', etc.). | <pre>map(object({<br/>    proj_name        = string<br/>    proj_description = string<br/>    proj_visibility  = string  # e.g., "private" or "public"<br/>    proj_vcs         = string  # e.g., "Git" or "Tfvc"<br/>    proj_wi_template = string  # e.g., "Agile", "Scrum", "CMMI"<br/>  }))</pre> | <pre>{<br/>  "sample_project": {<br/>    "proj_description": "This is a sample Azure DevOps project.",<br/>    "proj_name": "SampleProject",<br/>    "proj_vcs": "Git",<br/>    "proj_visibility": "private",<br/>    "proj_wi_template": "Agile"<br/>  }<br/>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project_ids"></a> [project\_ids](#output\_project\_ids) | List of unique IDs for the Azure DevOps projects created by this module. |
| <a name="output_project_names"></a> [project\_names](#output\_project\_names) | List of names of the Azure DevOps projects provisioned by this module. |
| <a name="output_project_urls"></a> [project\_urls](#output\_project\_urls) | List of URLs for accessing the Azure DevOps projects created, based on the specified organization name. |
