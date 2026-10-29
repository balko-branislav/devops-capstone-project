variable "environment" {
  description = "Nazov prostredia (napr. staging, production)"
  type        = string
  default     = "production"
}

variable "app_port" {
  description = "Vonkajsi port pre aplikaciu"
  type        = number
  default     = 8080
}

variable "docker_image_tag" {
  description = "Tag Docker obrazu z CI/CD pipeline"
  type        = string
  default     = "latest"
}
