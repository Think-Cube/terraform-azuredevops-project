output "id" {
  description = "The ID of the created Azure DevOps project."
  value       = azuredevops_project.main.id
}

output "name" {
  description = "The name of the created Azure DevOps project."
  value       = azuredevops_project.main.name
}

output "project_id" {
  description = "The ID of the created Azure DevOps project (alias for id)."
  value       = azuredevops_project.main.id
}
