resource "aws_ssm_parameter" "database_host" {
  name        = "/oficina360/database/host"
  description = "Endpoint do RDS PostgreSQL da Oficina360"
  type        = "String"
  value       = aws_db_instance.postgres.address

  tags = {
    Project   = var.project_name
    ManagedBy = "terraform"
  }
}

resource "aws_ssm_parameter" "database_port" {
  name        = "/oficina360/database/port"
  description = "Porta do RDS PostgreSQL da Oficina360"
  type        = "String"
  value       = tostring(aws_db_instance.postgres.port)

  tags = {
    Project   = var.project_name
    ManagedBy = "terraform"
  }
}

resource "aws_ssm_parameter" "database_name" {
  name        = "/oficina360/database/name"
  description = "Nome do banco PostgreSQL da Oficina360"
  type        = "String"
  value       = var.db_name

  tags = {
    Project   = var.project_name
    ManagedBy = "terraform"
  }
}