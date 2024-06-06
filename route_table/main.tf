resource "aws_route_table" "this" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route" "this" {
  route_table_id         = aws_route_table.this.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.igw_id
}

resource "aws_route_table_association" "this" {
  for_each = { for idx, subnet_id in var.subnet_ids : idx => subnet_id }
  subnet_id      = each.value
  route_table_id = aws_route_table.this.id
}
