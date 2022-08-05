
resource "random_string" "random" {
  length = 6
  special = false
  upper = false
}

terraform {
  backend "s3" {
    bucket = "devops-catalog"
    key    = "terraform/state"
  }
}
