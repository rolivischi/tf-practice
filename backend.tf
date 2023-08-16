terraform {
  cloud {
    organization = "example-org-bd71e1"

    workspaces {
      name = "tf-practice"
    }
  }

  required_version = ">= 1.1.2"
}