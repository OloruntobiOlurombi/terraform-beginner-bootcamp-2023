resource "aws_s3_bucket" "website_bucket_tobi" {
  # Bucket Naming Rules
  # https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html
  bucket = var.buket_name

    tags = {
    UserUuid        = var.user_uuid 
  }
}