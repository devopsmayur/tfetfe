terraform {
  required_providers {
    tfe = {
      version = "~> 0.44.0"
    }
  }
}
resource "tfe_organization" "test-organization" {
  name  = "devopsmayur"
  email = "admin@company.com"
}

resource "tfe_workspace" "test" {
  name         = "my-workspace-namemkg"
  organization = tfe_organization.test-organization.name
  tag_names    = ["test", "app"]
}
