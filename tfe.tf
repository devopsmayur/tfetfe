terraform {
  required_providers {
    tfe = {
      version = "~> 0.44.0"
    }
  }
}
resource "tfe_workspace" "example" {
  name         = "mayure"
  organization = "devopsmayur"
}
