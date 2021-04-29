locals {
  allusers = distinct(concat(var.developers, var.devops, var.tech_leads))
}
resource "github_membership" "membership_users" {
  count    = length(local.allusers)
  username = local.allusers[count.index]
  role     = "member"
}
resource "github_team_membership" "developers_membership" {
  team_id  = github_team.developers.id
  count    = length(var.developers)
  username = var.developers[count.index]
  role     = "member"
}

resource "github_team_membership" "devops_membership" {
  team_id  = github_team.devops.id
  count    = length(var.devops)
  username = var.devops[count.index]
  role     = "member"
}

resource "github_team_membership" "tech_leads_membership" {
  team_id  = github_team.tech_leads.id
  count    = length(var.tech_leads)
  username = var.tech_leads[count.index]
  role     = "member"
}
