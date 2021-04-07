variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Region where resources will be created"
}

variable "tfe_deployment_role_arn" {
  type = string
}

variable "appshortname" {
  type = string
}

variable "name"{
  type        = string
  description = "Name to be provided for cloudformaiton stack"
}

