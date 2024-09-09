variable "subnet_id" {}
variable "security_group_id" {}
variable "instance_type" {}
variable "ec2_ami_owner" {}
variable "ec2_ami_name_filter" {}
variable "public_key" {
  type        = string
  description = "Public key for EC2 instance SSH access"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = [var.ec2_ami_owner]

  filter {
    name   = "name"
    values = [var.ec2_ami_name_filter]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_key_pair" "main" {
  key_name   = "main-key-pair"
  public_key = var.public_key
}

resource "aws_instance" "jenkins" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  key_name                    = aws_key_pair.main.key_name
  associate_public_ip_address = true  

  tags = {
    Name = "Jenkins-Server"
  }
}

output "jenkins_public_ip" {
  value = aws_instance.jenkins.public_ip
}

# Uncomment the following blocks to launch additional EC2 instances

/*
resource "aws_instance" "sonarqube" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name                    = aws_key_pair.main.key_name
  associate_public_ip_address = true  
  tags = {
    Name = "Sonarqube-Server"
  }
 }

output "sonarqube_public_ip" {
  value = aws_instance.sonarqube.public_ip
}
*/

/*
resource "aws_instance" "argocd" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name                    = aws_key_pair.main.key_name
  associate_public_ip_address = true  
  tags = {
    Name = "ArgoCD-Server"
  }
}

output "argocd_public_ip" {
  value = aws_instance.argocd.public_ip
}
*/

/*
resource "aws_instance" "nexus" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name                    = aws_key_pair.main.key_name
  associate_public_ip_address = true  
  tags = {
    Name = "Nexus-Server"
  }
}

output "nexus_public_ip" {
  value = aws_instance.nexus.public_ip
}
*/