provider "volterra" {
  url = var.api_url
}

# Create a random id if infra tf run is not executed for the usecase
resource "random_id" "build_suffix" {
  count       = var.infra ? 0 : 1
  byte_length = 2
}
