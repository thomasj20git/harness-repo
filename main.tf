provider "aws" {
  region = "us-east-1" # Modify with your desired AWS region
}
resource "aws_s3_bucket" "example" {
  bucket = "harness-bucket-practice-2"  # Replace with your desired bucket name

  acl    = "private"  # You can adjust the ACL (Access Control List) as needed

  tags = {
    Name = "My Example S3 Bucket"
  }
}