provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "oficina360"
      Environment = var.environment
      ManagedBy   = "terraform"
      Repository  = "oficina360-database-infra"
    }
  }
}