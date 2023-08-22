variable "tfe_token" {
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
  owner = "rolivischi"
}

provider "tfe" {
  hostname = "app.terraform.io"
  token    = "var.tfe_token"
}