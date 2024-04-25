/*
data "tfe_outputs" "infra" {
  count        = var.infra ? 1 : 0
  organization = "dummy"
  workspace    = "infra"
}
data "tfe_outputs" "bigip" {
  count        = var.infra && data.tfe_outputs.infra[0].values.bigip ? 1 : 0
  organization = "dummy"
  workspace    = "bigip-base"
}
*/