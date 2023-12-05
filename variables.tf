variable "user_uuid" {
  description = "User UUID"
  type        = string
  default = "7086a277-3bf7-465e-9021-60e6c43f32f3"
  
  validation {
    condition     = can(regex("^([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})$", var.user_uuid))
    error_message = "The 'user_uuid' must be in the format of a UUID (e.g., 123e4567-e89b-12d3-a456-426614174000)."
  }
}

variable "bucket_name" {
  #description = "The name of the s3 bucket"
  type = string 
  default = "f17a0oifpuowri4pnl58r53bjwkkfqbq"
}

variable "index_html_filepath" {
  type = string
  default = "/workspace/terraform-beginner-bootcamp-2023/public/index.html"

}

variable "error_html_filepath" {
  type = string
  default = "/workspace/terraform-beginner-bootcamp-2023/public/error.html"

}
