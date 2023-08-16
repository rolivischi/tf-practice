resource "github_repository" "example" {
  name        = "my-new-repo"
  description = "This is my new repository created with Terraform"
  private     = true
}