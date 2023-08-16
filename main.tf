resource "github_repository" "example" {
  name        = "tf-example-created-repo"
  description = "This is my new repository created with Terraform"
  visibility  = "private"
}

resource "google_storage_bucket" "example_bucket" {
  name     = "rvischi-example-bucket" # must be globally unique
  location = "EU"                     # or other location
}