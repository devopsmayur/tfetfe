terraform {
  required_providers {
    tfe = {
      version = "~> 0.44.0"
    }
  }
}
resource "devopsmayur" {
  name  = "my-org-name"
  email = "mayur.gandhi@hashicorp.com"
}

resource "tfe_workspace" "test" {
  name         = "my-workspace-mayur"
  tag_names    = [“prod”]
}
