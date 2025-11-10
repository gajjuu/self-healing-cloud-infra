###########################################
# Terraform AWS Provider Configuration
###########################################

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"              # You can change this to your preferred AWS region
  profile = "default"                # Uses credentials from ~/.aws/credentials
}

###########################################
# Optional: Backend configuration (uncomment if using remote backend)
###########################################
# backend "s3" {
#   bucket         = "your-terraform-state-bucket"
#   key            = "self_healing_cloud_infra/terraform.tfstate"
#   region         = "us-east-1"
#   dynamodb_table = "terraform-locks"
#   encrypt        = true
# }
