#Global
variable "infra" {
  type    = string
  default = true
}
#XC
variable "xc_tenant" {
  type        = string
  description = "Your F5 XC tenant name"
}
variable "api_url" {
  type        = string
  description = "Your F5 XC tenant api url"
}
variable "xc_namespace" {
  type        = string
  description = "Volterra app namespace where the object will be created. This cannot be system or shared ns."
}
variable "project_prefix" {
  type        = string
  default     = "xcdemo"
  description = "This value is inserted at the beginning of each object and only used if not set by Infra TF run"
}
variable "app_domain" {
  type        = string
  description = "FQDN for the app. If you have delegated domain `prod.example.com`, then your app_domain can be `<app_name>.prod.example.com`"
}
variable "xc_api_pro" {
  type        = string
  description = "Enable API Protection (Definition and Rules)"
  default     = "false"
}
variable "xc_api_disc" {
  type        = string
  description = "Enable API Discovery on single LB"
  default     = "false"
}
variable "xc_api_spec" {
  type        = list(any)
  description = "XC object store path to swagger spec ex: https://my.tenant.domain/api/object_store/namespaces/my-ns/stored_objects/swagger/file-name/v1-22-01-12"
  default     = null
}
