terraform {
  backend "s3" {
    bucket = "aws-training-storage-bucket123"
    region = "us-east-1"
    key    = "gihubactions2/terraform.tfstate"
  }
}