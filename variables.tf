variable "chart_version" {
  description = "The version of the Helm chart to install."
  type        = string
  default     = "v1.13.3"
}

variable "create_namespace" {
  description = "Create the namespace for cert-manager."
  type        = bool
  default     = true
}
