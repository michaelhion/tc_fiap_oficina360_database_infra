resource "aws_db_subnet_group" "main" {
  name        = "${var.project_name}-${var.environment}-subnets"
  description = "Subnets utilizadas pelo RDS PostgreSQL"
  subnet_ids  = local.subnet_ids

  tags = {
    Name        = "${var.project_name}-${var.environment}-subnets"
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}