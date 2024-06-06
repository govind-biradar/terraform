resource "aws_lb" "this" {
  name               = var.lb_name
  internal           = var.lb_internal
  load_balancer_type = var.lb_type
  subnets            = var.lb_subnets
  security_groups    = [var.lb_security_group]

  tags = {
    Name = var.lb_name
  }
}
