output "project_names" {
  description = "List of names of the Azure DevOps projects provisioned by this module."
  value       = [for project in azuredevops_project.main : project.name]
  sensitive   = false
}

output "project_ids" {
  description = "List of unique IDs for the Azure DevOps projects created by this module."
  value       = [for project in azuredevops_project.main : project.id]
  sensitive   = false
}

output "project_urls" {
  description = "List of URLs for accessing the Azure DevOps projects created, based on the specified organization name."
  value       = [for project in azuredevops_project.main : "https://dev.azure.com/${var.organization_name}/${project.name}"]
  sensitive   = false
}
