provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "bad_example" {
  bucket = "my-insecure-bucket"
  acl    = "public-read" # tfsec will warn about this
}

