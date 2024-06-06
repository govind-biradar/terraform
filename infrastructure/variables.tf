variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
}

variable "route_table_name" {
  description = "Name of the Route Table"
  type        = string
}

variable "subnet_configs" {
  description = "List of subnet configurations"
  type = list(object({
    cidr_block        = string
    availability_zone = string
    subnet_name       = string
  }))
}

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

variable "instance_configs" {
  description = "List of instance configurations"
  type = list(object({
    ami_id        = string
    instance_type = string
    key_name      = string
    instance_name = string
  }))
}
