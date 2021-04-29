resource "github_repository" "repo_example" {
  name        = "repo_example"
  description = "My repo example"
  visibility  = "private"
  auto_init   = true
}

resource "github_branch" "development" {
  repository = github_repository.repo_example.name
  branch     = "development"
}

resource "github_team_repository" "developers_repo_example" {
  team_id    = github_team.developers.id
  repository = github_repository.repo_example.name
  permission = "push"
}

resource "github_team_repository" "devops_repo_example" {
  team_id    = github_team.devops.id
  repository = github_repository.repo_example.name
  permission = "admin"
}

resource "github_team_repository" "tech_leads_repo_example" {
  team_id    = github_team.tech_leads.id
  repository = github_repository.repo_example.name
  permission = "maintain"
}
