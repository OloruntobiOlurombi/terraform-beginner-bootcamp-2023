output "bucket_name" {
    description = "Bucket name for our staic website hosting"
    value = module.terrahouse_aws.bucket_name
}

output "s3_website_enpoint" {
    description = "S3 Static Website hosting endpoint"
    value = module.terrahouse_aws.website_endpoint
}
