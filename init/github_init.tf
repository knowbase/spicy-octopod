resource "github_repository_environment" "env" {
  repository  = "spicy-octopod"
  environment = format("%s-gh-env-%s-%s", var.usecase, var.platform, random_id.build_suffix.hex)
}
resource "github_actions_environment_variable" "platform" {
  repository    = "spicy-octopod"
  environment   = github_repository_environment.env.environment
  variable_name = "PLATFORM"
  value         = var.platform
}
resource "github_actions_environment_variable" "build_suffix" {
  repository    = "spicy-octopod"
  environment   = github_repository_environment.env.environment
  variable_name = "BUILD_SUFFIX"
  value         = random_id.build_suffix.hex
}
resource "github_actions_environment_secret" "xc-key" {
  repository  = "spicy-octopod"
  environment = github_repository_environment.env.environment
  secret_name = "XC_KEY"
}
resource "github_actions_environment_secret" "xc-key-pass" {
  repository  = "spicy-octopod"
  environment = github_repository_environment.env.environment
  secret_name = "XC_KEY_PASS"
}
resource "github_actions_environment_secret" "aws-access-key-id" {
  count       = var.platform == "aws" ? 1 : 0
  repository  = "spicy-octopod"
  environment = github_repository_environment.env.environment
  secret_name = "AWS_ACCESS_KEY_ID"
}
resource "github_actions_environment_secret" "aws-secret-access-key" {
  count       = var.platform == "aws" ? 1 : 0
  repository  = "spicy-octopod"
  environment = github_repository_environment.env.environment
  secret_name = "AWS_SECRET_ACCESS_KEY"
}
resource "github_actions_environment_secret" "aws-session-token" {
  count       = var.platform == "aws" ? 1 : 0
  repository  = "spicy-octopod"
  environment = github_repository_environment.env.environment
  secret_name = "AWS_SESSION_TOKEN"
}