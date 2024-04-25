provider "volterra" {
    url   = var.api_url
}

# Create a random id if infrarun is not executed for the usecase
resource "random_id" "build_suffix" {
  count = var.vk8s = 1 : 0
  byte_length = 2
}
