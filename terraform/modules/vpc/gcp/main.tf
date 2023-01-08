resource "null_resource" "vpc" {
  triggers = {
    name = "Primary VPC"
    cidr_block = "0.0.0.0/1"
  }
}
