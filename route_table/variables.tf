variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "igw_id" {
  description = "The ID of the Internet Gateway"
  type        = string
}

variable "route_table_name" {
  description = "Name of the Route Table"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}
