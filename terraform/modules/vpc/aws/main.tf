resource "null_resource" "vpc" {
  triggers = {
    name       = "Main VPC"
    cidr_block = "0.0.0.0/1"
  }
}
