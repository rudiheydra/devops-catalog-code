
resource "random_string" "random" {
  length = 6
  special = false
  upper = false
}

terraform {
  backend "s3" {
    bucket = "devops-catalog-${random_string.random.result}"
    key    = "terraform/state"
  }
}
