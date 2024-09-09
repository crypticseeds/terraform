variable "bucket_name" {
  type        = string
  description = "Remote state bucket name"
}

variable "name" {
  type        = string
  description = "Tag name"
}

variable "environment" {
  type        = string
  description = "Environment name"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  type        = string
  description = "DevOps Project 1 VPC 1"
}

variable "public_key" {
  type        = string
  description = "DevOps Project 1 Public key for EC2 instance"
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for private subnets"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
}

variable "ec2_instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "db_instance_class" {
  type        = string
  description = "RDS instance class"
}

variable "db_username" {
  type        = string
  description = "Username for the database"
}

variable "db_password" {
  type        = string
  description = "Password for the database"
  sensitive   = true
}

variable "ec2_ami_owner" {
  type        = string
  description = "Owner ID of the AMI"
}

variable "ec2_ami_name_filter" {
  type        = string
  description = "Name filter for the EC2 AMI"
}

variable "allowed_ssh_cidr" {
  type        = string
  description = "CIDR block for allowed SSH access"
}