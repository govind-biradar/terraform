

module "vpc" {
  source   = "../vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module "internet_gateway" {
  source  = "../internet_gateway"
  vpc_id  = module.vpc.vpc_id
  igw_name = var.igw_name
}

module "route_table" {
  source           = "../route_table"
  vpc_id           = module.vpc.vpc_id
  igw_id           = module.internet_gateway.igw_id
  route_table_name = var.route_table_name
  subnet_ids       = module.subnet.subnet_ids
}

module "subnet" {
  source         = "../subnet"
  vpc_id         = module.vpc.vpc_id
  subnet_configs = var.subnet_configs
}

module "load_balancer" {
  source           = "../load_balancer"
  lb_name          = var.lb_name
  lb_internal      = var.lb_internal
  lb_type          = var.lb_type
  lb_subnets       = module.subnet.subnet_ids
  lb_security_group = module.vpc.default_security_group_id
}

module "ec2" {
  source           = "../ec2"
  instance_configs = var.instance_configs
  subnet_ids       = module.subnet.subnet_ids
  security_group   = module.vpc.default_security_group_id
}
