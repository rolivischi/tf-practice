variable "tfe_token" {
    type = string
    sensitive = true
}

provider "tfe" {
    hostname = "app.terraform.io"
    token = "var.tfe_token"
}