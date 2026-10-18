resource "aws_db_subnet_group" "main" {
  name        = "oficina360-db-subnets"
  description = "Subnets utilizadas pelo RDS PostgreSQL"
  subnet_ids  = local.subnet_ids

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = "oficina360-db-subnets"
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}