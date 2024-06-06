variable "instance_configs" {
  description = "List of instance configurations"
  type = list(object({
    ami_id        = string
    instance_type = string
    key_name      = string
    instance_name = string
  }))
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "security_group" {
  description = "Security group ID"
  type        = string
}
