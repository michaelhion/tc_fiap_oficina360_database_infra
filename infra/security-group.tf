resource "aws_security_group" "rds" {
  name        = "${local.name_prefix}-rds"
  description = "Security group for Oficina360 RDS PostgreSQL"
  vpc_id      = data.aws_vpc.lab.id

  ingress {
    description     = "PostgreSQL from Oficina360 application resources"
    from_port       = var.db_port
    to_port         = var.db_port
    protocol        = "tcp"
    security_groups = [data.aws_security_group.default.id]
  }

  egress {
    description = "Allow outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.name_prefix}-rds-sg"
  }
}