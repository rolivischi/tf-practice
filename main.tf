resource "github_repository" "example" {
  name        = "tf-example-created-repo"
  description = "This is my new repository created with Terraform"
  visibility     = "private"
}