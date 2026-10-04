resource "aws_db_subnet_group" "rds" {
  name        = "${local.name_prefix}-db-subnet-group"
  description = "Subnet group for Oficina360 RDS"

  subnet_ids = [
    data.aws_subnet.a.id,
    data.aws_subnet.b.id
  ]

  tags = {
    Name = "${local.name_prefix}-db-subnet-group"
  }
}