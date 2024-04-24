resource "github_repository_environment" "environment" {
  repository  = "spicy-octopod"
  environment = var.usecase
}
resource "github_actions_environment_secret" "xc-api-p12" {
  repository  = "spicy-octopod"
  environment = var.usecase
  secret_name = "XC_API_P12"
}
resource "github_actions_environment_secret" "tfe-api-token" {
  repository  = "spicy-octopod"
  environment = var.usecase
  secret_name = "TF_API_TOKEN"
}
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