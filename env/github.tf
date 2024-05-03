resource "github_repository_environment" "env" {
  repository  = "spicy-octopod"
  environment = format("%s-%s-%s", var.usecase, var.platform, random_id.build_suffix.hex)
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
resource "github_actions_environment_variable" "state-bucket" {
  repository  = "spicy-octopod"
  environment = github_repository_environment.env.environment
  variable_name = "STATE_BUCKET"
  value = var.state-bucket
}
/*
resource "github_actions_environment_variable" "tfe-env-workspace" {
  repository    = "spicy-octopod"
  environment   = var.usecase
  variable_name = "TF_CLOUD_WORKSPACE_ENV"
  value         = var.tfe-env-workspace
}
resource "github_actions_environment_variable" "tfe-xc-workspace" {
  repository    = "spicy-octopod"
  environment   = var.usecase
  variable_name = "TF_CLOUD_WORKSPACE_XC"
  value         = var.tfe-xc-workspace
}
resource "github_actions_environment_variable" "tfe-infra-workspace" {
  repository    = "spicy-octopod"
  environment   = var.usecase
  variable_name = "TF_CLOUD_WORKSPACE_INFRA"
  value         = var.tfe-infra-workspace
}
resource "github_actions_environment_variable" "tfe-bigip-base-workspace" {
  repository    = "spicy-octopod"
  environment   = var.usecase
  variable_name = "TF_CLOUD_WORKSPACE_BIGIP_BASE"
  value         = var.tfe-bigip-base-workspace
}
resource "github_actions_environment_variable" "tfe-k8s-workspace" {
  repository    = "spicy-octopod"
  environment   = var.usecase
  variable_name = "TF_CLOUD_WORKSPACE_K8S"
  value         = var.tfe-k8s-workspace
}
*/