terraform {
  backend "remote" {
    organization = "avinashmamidi"

    workspaces {
      name = "cft"
    }
  }
}