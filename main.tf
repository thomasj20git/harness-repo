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
provider "aws" {
  region = "us-east-1" # Modify with your desired AWS region
}
resource "aws_s3_bucket" "example" {
  bucket = "harness-bucket-practice-8"  # Replace with your desired bucket name

  acl    = "private"  # You can adjust the ACL (Access Control List) as needed

  tags = {
    Name = "My Example S3 Bucket"
  }
}