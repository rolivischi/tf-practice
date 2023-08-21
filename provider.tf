variable "tfe_token" {
  type      = string
  sensitive = true
}

variable "github_token" {
  type      = string
  sensitive = true
}

variable "project_id" {
  type      = string
  sensitive = true
}

provider "google" {
  project = var.project_id
  region  = "europe-west1"
}

provider "github" {
  token = var.github_token
  owner = "senacor3"
}

provider "tfe" {
  hostname = "app.terraform.io"
  token    = "var.tfe_token"
}