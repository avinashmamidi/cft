variable appshortname {
  description = "Application short name of the target application"
  type        = string
  default     = "myapp"
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Region where resources will be created"
}

variable tfe_deployment_role_arn {
  type        = string
  description = "AWS deployer car role for target account" 
}

variable "name"{
  type        = string
  description = "Name to be provided for cloudformaiton stack"
}
