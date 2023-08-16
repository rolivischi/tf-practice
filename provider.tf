variable "tfe_token" {
    type = string
    sensitive = true
}

variable "github_token" {
    type = string
    sensitive = true
}

provider "github" {
  token        = var.github_token
  organization = "example-org-bd71e1"
}

provider "tfe" {
    hostname = "app.terraform.io"
    token = "var.tfe_token"
}