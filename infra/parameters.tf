data "aws_ssm_parameter" "vpc_id" {
  name = "/oficina360/network/vpc-id"
}

data "aws_ssm_parameter" "subnet_ids" {
  name = "/oficina360/network/subnet-ids"
}

data "aws_ssm_parameter" "database_access_sg" {
  name = "/oficina360/network/database-access-sg-id"
}

locals {
  subnet_ids = split(
    ",",
    data.aws_ssm_parameter.subnet_ids.value
  )
}