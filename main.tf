# terraform {
#   backend "http" {
#     address = "${harness_workspace.variable.TF_HTTP_ADDRESS}"
#     username = "harness"
#     password = "${harness_workspace.variable.TF_HTTP_PASSWORD}"
#     lock_address = "${harness_workspace.variable.TF_HTTP_UNLOCK_ADDRESS}"
#     lock_method = "POST"
#     unlock_address = "${harness_workspace.variable.TF_HTTP_UNLOCK_ADDRESS}"
#     unlock_method = "DELETE"
#   }
# }
terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.0, < 4.0" # Specify the desired version constraint
    }
  }
}
provider "aws" {
  region = "us-east-1" # Modify with your desired AWS region
}
resource "aws_s3_bucket" "example" {
  bucket = "harness-bucket-practice-11" # Replace with your desired bucket name
  # acl    = "public-read"  # Vulnerability: Public ACL
  acl = "private" # You can adjust the ACL (Access Control List) as needed

  versioning {
    enabled = true
  }

  tags = {
    Name = "My Example S3 Bucket"
  }
}