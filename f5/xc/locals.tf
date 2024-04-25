locals {
  project_prefix = try(data.tfe_outputs.infra.values.project_prefix, var.project_prefix)
  build_suffix = try(data.tfe_outputs.infra.values.build_suffix, resource.random_id.build_suffix)
  infra = try(data.tfe_outputs.infra.values.project_prefix, "")
}