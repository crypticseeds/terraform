bucket_name = "yelp-camp-remote-backend-45646"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones   = ["eu-west-2a", "eu-west-2b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCw7E5O62LQZKwMTQX4FNOzC4Gnj3GoZctNVMFezoQ1e40wlrrppD9jwrUfhxWyVWnb1nC+QyESPj0PD1vgaRIxuBjJ8/BNsC4KSTNw0Wld0MwULAWQxYvGnPNsLMbQxtcl2jNwjucwDlhAokmRA1jviNKGkGXI3I99JpJEjh+xTiFL0LReRXVPewiIOA6S32P7jHNHvFZ63ln1zYq7h6QjpuL8nRki17ZkWXx8lF4yDOkh7Kw/AfZfi0Phm4zy0fDL0dkXlQqfBspGDiaqX9hh72S0ZcjR0+yuFDnkM7S8dtcPtyjFVO4jPPu5dNg5mYAqFWKMfF+EK2IF1cj7OGCwbftHUNkCAN0eF986W1YKU/zrF9/NEvvcNBEtIzX9sVFmPFWWem3uIrvARCw7zDn3qw4NqZAaTV37zilm5TfC8nKOfNl43N6A9dfHg/n2S3gUDVaSLn7EfUoz05xGEv+aPDkOWJ1CaT36fPMEQsRRZcxarCj7XkNjyTrdzxA2f8Qj4JEtHUkD+aSoMuXFwgNsihK/6oYri3uaHDZGLFN7UHNIzeyT2WNtrTpX8IdEQIDV/nBAimCfT3dVfSLdUW4wu6fu4eG/NrqUTGPUMZrrEOIW1sjcYt/jJsOMJ8bFc1mFA8azRkEVQWvXCiQHtWdFOfBy78WehAywOBFsY15/ww== AWS"

region            = "eu-west-2"
ec2_instance_type = "t2.micro"
db_instance_class = "db.t3.micro"

db_username = "admin"
db_password = "your-secure-password-here"

ec2_ami_owner       = "099720109477" // Ubuntu
ec2_ami_name_filter = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"

allowed_ssh_cidr = "0.0.0.0/0"