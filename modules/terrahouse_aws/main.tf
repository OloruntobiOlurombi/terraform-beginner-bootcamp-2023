#TerraHouse File
terraform {
    required_providers {
     aws = {
      source = "hashicorp/aws"
      version = "5.19.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  #access_key = 
  #secret_key = 
}

resource "aws_s3_bucket" "website_bucket_tobi" {
  # Bucket Naming Rules
  # https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html
  bucket = var.buket_name

    tags = {
    UserUuid        = var.user_uuid 
  }
}