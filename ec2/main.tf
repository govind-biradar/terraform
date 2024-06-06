resource "aws_instance" "this" {
  for_each      = { for idx, cfg in var.instance_configs : idx => cfg }
  ami           = each.value.ami_id
  instance_type = each.value.instance_type
  subnet_id     = var.subnet_ids[each.key % length(var.subnet_ids)]  # Distribute instances across subnets
  key_name      = each.value.key_name
  vpc_security_group_ids = [var.security_group]

  tags = {
    Name = each.value.instance_name
  }
}
