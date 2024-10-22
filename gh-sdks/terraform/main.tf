terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {

}

resource "github_branch" "sdks" {
  repository = "gh-foundations-training"
  branch     = "sdks"
  source_branch = "master"
}
