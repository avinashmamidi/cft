provider aws {
  alias   = "local"
  version = "~> 3.0"
  region  = var.aws_region
}

provider aws {
  version = "~> 3.0"
  region  = var.aws_region

}

module "cloudfront-distribution" {
  source = "./.."

  name        = var.name
  tfe_deployment_role_arn = var.tfe_deployment_role_arn
}
