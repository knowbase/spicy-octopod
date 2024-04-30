resource "github_actions_secret" "xc-key" {
  repository  = "spicy-octopod"
  secret_name = "XC_KEY"
}
resource "github_actions_secret" "xc-key-pass" {
  repository  = "spicy-octopod"
  secret_name = "XC_KEY_PASS"
}
resource "github_repository_environment" "env" {
  repository  = "spicy-octopod"
  environment = format("%s-gh-env-%s-%s", var.platform, var.usecase, random_id.build_suffix.hex)
}
resource "github_actions_environment_variable {
  repository = "spicy-octopod"
  environment = github_repository_environment.env.environment
  variable_name = platform
  value = var.platform
}
resource "github_actions_environment_variable {
  repository = "spicy-octopod"
  environment = github_repository_environment.env.environment
  variable_name = build_suffix
  value = random_id.build_suffix.hex
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