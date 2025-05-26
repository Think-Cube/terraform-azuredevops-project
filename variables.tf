variable "projects" {
  type = map(object({
    proj_name        = string
    proj_description = string
    proj_visibility  = string  # e.g., "private" or "public"
    proj_vcs         = string  # e.g., "Git" or "Tfvc"
    proj_wi_template = string  # e.g., "Agile", "Scrum", "CMMI"
  }))

  description = <<DESC
A map defining the Azure DevOps projects to be created. Each project must include:
  - `proj_name`: The display name of the project.
  - `proj_description`: A short description of the project.
  - `proj_visibility`: Project visibility setting ('private' or 'public').
  - `proj_vcs`: The version control system to use ('Git' or 'Tfvc').
  - `proj_wi_template`: The work item process template ('Agile', 'Scrum', 'CMMI', etc.).
DESC

  default = {
    sample_project = {
      proj_name        = "SampleProject"
      proj_description = "This is a sample Azure DevOps project."
      proj_visibility  = "private"
      proj_vcs         = "Git"
      proj_wi_template = "Agile"
    }
  }
}

variable "organization_name" {
  description = "Name of the Azure DevOps organization under which the projects will be created."
  type        = string
  default     = "my-azure-devops-org"
}