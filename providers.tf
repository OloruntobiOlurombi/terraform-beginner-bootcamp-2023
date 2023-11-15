terraform {
  #cloud {
   # organization = "terraform-begineer-bootcamp-2023"
   # workspaces {
   #   name = "terra-house-1"
   # }
  #}

  required_providers {
    # random = {
    #   source = "hashicorp/random"
    #   version = "3.5.1"
    # }
     aws = {
      source = "hashicorp/aws"
      version = "5.19.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  # access_key = 
  # secret_key = 
}

# https://registry.terraform.io/providers/hashicorp/random/latest/docs

provider "random" {
  # Configuration options
}