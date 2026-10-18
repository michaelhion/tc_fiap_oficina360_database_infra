resource "aws_db_subnet_group" "main" {
  name       = "oficina360-db-subnets"
  subnet_ids = local.subnet_ids
}