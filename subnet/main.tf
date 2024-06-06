resource "aws_subnet" "this" {
  for_each = { for idx, cfg in var.subnet_configs : idx => cfg }

  vpc_id            = var.vpc_id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = each.value.subnet_name
  }
}
