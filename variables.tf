variable "name" {
  description = "The name of the Azure DevOps project."
  type        = string
}

variable "description" {
  description = "The description of the Azure DevOps project."
  type        = string
  default     = ""
}

variable "visibility" {
  description = "The visibility of the project. Valid values are 'private' or 'public'."
  type        = string
  default     = "private"

  validation {
    condition     = contains(["private", "public"], var.visibility)
    error_message = "visibility must be either 'private' or 'public'."
  }
}

variable "version_control" {
  description = "The version control system used by the project. Valid values are 'Git' or 'Tfvc'."
  type        = string
  default     = "Git"

  validation {
    condition     = contains(["Git", "Tfvc"], var.version_control)
    error_message = "version_control must be either 'Git' or 'Tfvc'."
  }
}

variable "work_item_template" {
  description = "The work item process template. Common values: 'Agile', 'Scrum', 'CMMI', 'Basic'."
  type        = string
  default     = "Agile"
}

variable "features" {
  description = "Optional map of feature states for the project. Each key is a feature name ('boards', 'repositories', 'pipelines', 'testplans', 'artifacts') and value is 'enabled' or 'disabled'."
  type        = map(string)
  default     = null
}
