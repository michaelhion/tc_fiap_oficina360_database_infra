data "aws_vpc" "lab" {
  id = var.vpc_id
}

data "aws_subnet" "a" {
  id = var.subnet_a_id
}

data "aws_subnet" "b" {
  id = var.subnet_b_id
}

data "aws_security_group" "default" {
  id = var.default_security_group_id
}