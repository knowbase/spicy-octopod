resource "github_actions_secret" "xc-key" {
  repository  = "spicy-octopod"
  secret_name = "XC_KEY"
}
resource "github_actions_secret" "xc-key-pass" {
  repository  = "spicy-octopod"
  secret_name = "XC_KEY_PASS"
}
resource "github_actions_secret" "aws-access-key-id" {
  count       = var.platform == "aws" ? 1 : 0
  repository  = "spicy-octopod"
  secret_name = "AWS_ACCESS_KEY_ID"
}
resource "github_actions_secret" "aws-secret-access-key" {
  count       = var.platform == "aws" ? 1 : 0
  repository  = "spicy-octopod"
  secret_name = "AWS_SECRET_ACCESS_KEY"
}
resource "github_actions_secret" "aws-session-token" {
  count       = var.platform == "aws" ? 1 : 0
  repository  = "spicy-octopod"
  secret_name = "AWS_SESSION_TOKEN"
}