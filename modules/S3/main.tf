resource "random_string" "suffix" {
  length  = 6
  upper   = false
  numeric = true
  special = false
}


resource "aws_s3_bucket" "default" {
  bucket = "phiva1985-s3-bucket-test-${random_string.suffix.result}"
}
