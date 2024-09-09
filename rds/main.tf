variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for the RDS instance"
}

variable "security_group_id" {
  type        = string
  description = "ID of the security group for the RDS instance"
}

variable "instance_class" {
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

resource "aws_db_subnet_group" "main" {
  name       = "db-subnet-group"
  subnet_ids = var.subnet_ids
}

resource "aws_db_instance" "main" {
  identifier           = "main-db"
  engine               = "mysql"
  engine_version       = "8.0.32"
  instance_class       = var.instance_class
  allocated_storage    = 20
  storage_type         = "gp2"
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.main.name
  vpc_security_group_ids = [var.security_group_id]
  skip_final_snapshot  = true
}

output "endpoint" {
  value       = aws_db_instance.main.endpoint
  description = "The connection endpoint for the RDS instance"
}

