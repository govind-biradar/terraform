variable "lb_name" {
  description = "The name of the load balancer"
  type        = string
}

variable "lb_internal" {
  description = "Boolean flag to indicate if the load balancer should be internal (true) or internet-facing (false)"
  type        = bool
}

variable "lb_type" {
  description = "The type of load balancer (application or network)"
  type        = string
}

variable "lb_subnets" {
  description = "The subnets in which to create the load balancer"
  type        = list(string)
}

variable "lb_security_group" {
  description = "The security group for the load balancer"
  type        = string
}
