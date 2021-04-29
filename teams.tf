resource "github_team" "developers" {
  name        = "Developers"
  description = "Developers"
  privacy     = "closed"
}

resource "github_team" "devops" {
  name        = "DevOps"
  description = "DevOps"
  privacy     = "closed"
}

resource "github_team" "tech_leads" {
  name        = "Tech Leads"
  description = "Tech Leads"
  privacy     = "closed"
}
