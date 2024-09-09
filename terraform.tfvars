bucket_name = "devopsfoundry-tf"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "devopsfoundry-vpc"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones   = ["eu-west-2a", "eu-west-2b"]

public_key = "your-public-key-here"

region            = "eu-west-2"
ec2_instance_type = "t2.micro"
db_instance_class = "db.t3.micro"

db_username = "admin"
db_password = "your-secure-password-here"

ec2_ami_owner       = "099720109477" // Ubuntu
ec2_ami_name_filter = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"

allowed_ssh_cidr = "0.0.0.0/0"