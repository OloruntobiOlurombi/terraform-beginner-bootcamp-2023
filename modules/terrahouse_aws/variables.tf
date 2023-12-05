variable "user_uuid" {
  description = "User UUID"
  type        = string
  
  validation {
    condition     = can(regex("^([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})$", var.user_uuid))
    error_message = "The 'user_uuid' must be in the format of a UUID (e.g., 123e4567-e89b-12d3-a456-426614174000)."
  }
}

variable "bucket_name" {
  description = "The name of the s3 bucket"
  type = string 
  default = "f17a0oifpuowri4pnl58r53bjwkkfqbq"
}

variable "index_html_filepath" {
  description = "The file path for index.html"
  type = string
  default = "/workspace/terraform-beginner-bootcamp-2023/public/index.html"

  validation {
    condition = fileexists(var.index_html_filepath)
    error_message = "The provided path for index.html does not exist"
  }
}

variable "error_html_filepath" {
  description = "The file path for error.html"
  type = string
  default = "/workspace/terraform-beginner-bootcamp-2023/public/error.html"

  validation {
    condition = fileexists(var.error_html_filepath)
    error_message = "The provided path for error.html does not exist"
  }
}

variable "content_version" {
  description = "The version of content (positive integer starting at 1)"
  type        = number
  
  validation {
    condition     = var.content_version > 0 && floor(var.content_version) == var.content_version
    error_message = "Content version must be a positive integer starting at 1."
  }
}

