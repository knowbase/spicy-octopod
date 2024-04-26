variable "email-addr" {
  type    = string
  default = "blah@blah.com"
}
variable "usecase" {
  type    = string
  default = "dev"
}
variable "infra" {
  type    = string
  default = "false"
}
variable "tfe-env-workspace" {
  type    = string
  default = "env"
}
variable "tfe-xc-workspace" {
  type    = string
  default = "xc"
}
variable "tfe-infra-workspace" {
  type    = string
  default = "aws-infra"
}
variable "tfe-k8s-workspace" {
  type    = string
  default = "eks"
}
variable "tfe-bigip-base-workspace" {
  type    = string
  default = "bigip-base"
}
variable "tfe-org-name" {
  type    = string
  default = "my-org-name"
}
variable "tfe-project-name" {
  type    = string
  default = "my-project-name"
}
variable "tfe-project-variable-set" {
  type    = string
  default = "my-variable-set"
}
