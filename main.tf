provider "aws" {
  region = "europe"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-tf-test-bucket"
  acl    = "private"
}
