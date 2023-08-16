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
  owner =   "senacor3"
}

provider "tfe" {
    hostname = "app.terraform.io"
    token = "var.tfe_token"
}