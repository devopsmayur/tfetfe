terraform {
  required_providers {
    tfe = {
      version = "~> 0.44.0"
    }
  }
}
resource "tfe_organization" "test-organization" {
  name  = "my-org-name"
  email = "admin@company.com"
}

resource "tfe_workspace" "test" {
  name         = "my-workspace-mayur"
  organization = tfe_organization.test-organization.name
  tag_names    = [“prod”]
}
