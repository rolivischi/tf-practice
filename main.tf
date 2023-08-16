provider "tfe" {
    hostname = "app.terraform.io"
    token = "var.tfe_token"
}

resource "tfe_organization" "example" {
    name = "example-org-bd71e1"
    email = "vischiroland@gmail.com"
}

resource "tfe_workspace" "tf-practice" {
    name = "tf-practice"
    organization = "tfe_organization.example.name"
}