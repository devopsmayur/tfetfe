terraform {
  required_providers {
    tfe = {
      version = "~> 0.44.0"
    }
  }
}
resource "tfe_workspace" "test" {
  name         = "my-workspace-namemayur"
  organization = "devopsmayur"
  tag_names    = ["app"]
}
