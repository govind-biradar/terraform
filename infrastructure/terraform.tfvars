vpc_cidr         = "10.0.0.0/16"
vpc_name         = "example-vpc"
igw_name         = "example-igw"
route_table_name = "example-route-table"

subnet_configs = [
  {
    cidr_block        = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    subnet_name       = "subnet-a"
  },
  {
    cidr_block        = "10.0.2.0/24"
    availability_zone = "us-east-1b"
    subnet_name       = "subnet-b"
  }
]


instance_configs = [
  {
    ami_id        = "ami-00beae93a2d981137"
    instance_type = "t2.micro"
    key_name      = "appkey"
    instance_name = "example-instance-1"
  },
  {
    ami_id        = "ami-00beae93a2d981137"
    instance_type = "t2.micro"
    key_name      = "appkey"
    instance_name = "example-instance-2"
  }
]

lb_name             = "example-lb"
lb_internal         = false  # Example: Internet-facing load balancer
lb_type             = "application"  # or "network" for Network Load Balancer
