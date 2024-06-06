variable "vpc_id" {
  description = "The ID of the VPC"
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
