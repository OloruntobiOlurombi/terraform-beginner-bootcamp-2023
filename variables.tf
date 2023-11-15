variable "user_uuid" {
  description = "User UUID"
  type        = string
  
  validation {
    condition     = can(regex("^([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})$", var.user_uuid))
    error_message = "The 'user_uuid' must be in the format of a UUID (e.g., 123e4567-e89b-12d3-a456-426614174000)."
  }
}

variable "buket_name" {
  type = string 
  default = "f17a0oifpuowri4pnl58r53bjwkkfqbq"
}
