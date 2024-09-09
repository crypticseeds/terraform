module "networking" {
  source               = "./networking"
  vpc_cidr             = var.vpc_cidr
  vpc_name             = var.vpc_name
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

module "security_groups" {
  source           = "./security_groups"
  vpc_id           = module.networking.vpc_id
  allowed_ssh_cidr = var.allowed_ssh_cidr
}

module "ec2" {
  source              = "./ec2"
  subnet_id           = module.networking.public_subnet_ids[0]
  security_group_id   = module.security_groups.ec2_sg_id
  instance_type       = var.ec2_instance_type
  ec2_ami_owner       = var.ec2_ami_owner
  ec2_ami_name_filter = var.ec2_ami_name_filter
  public_key          = var.public_key
}

# Commented out modules to be launched later as needed

/*
# Needed for EKS
module "eks" {
  source     = "./eks"
  vpc_id     = module.networking.vpc_id
  subnet_ids = module.networking.private_subnet_ids
}

# Needed for Load Balancer
data "aws_instances" "eks_nodes" {
  instance_tags = {
    "eks:cluster-name"   = module.eks.cluster_name
    "eks:nodegroup-name" = module.eks.node_group_name
  }
}

module "lb" {
  source            = "./lb"
  vpc_id            = module.networking.vpc_id
  public_subnet_ids = module.networking.public_subnet_ids
}

# Needed for RDS
module "rds" {
  source            = "./rds"
  subnet_ids        = module.networking.private_subnet_ids
  security_group_id = module.security_groups.db_sg_id
  instance_class    = var.db_instance_class
  db_username       = var.db_username
  db_password       = var.db_password
}
*/
