variable "tfe_token" {
  type      = string
  sensitive = true
}

variable "github_token" {
  type      = string
  sensitive = true
}

variable "gcp_storage_account" {
  type      = string
  sensitive = true
}

variable "project_id" {
  type      = string
  sensitive = true
}

variable "identity_pool_id" {
  type      = string
  sensitive = true
}

variable "provider_id" {
  type      = string
  sensitive = true
}

provider "google" {
  project          = var.project_id
  region           = "europe-west1"
  identity_pool_id = var.identity_pool_id # This should be the full path, like [PROJECT_ID].svc.id.goog
  provider         = var.provider_id      # This should be the full path, like [PROJECT_ID].svc.id.goog/[WORKLOAD_IDENTITY_POOL]/[WORKLOAD_PROVIDER_ID]
  access_token     = data.external.token.result["access_token"]
}

provider "github" {
  token = var.github_token
  owner = "senacor3"
}

provider "tfe" {
  hostname = "app.terraform.io"
  token    = "var.tfe_token"
}