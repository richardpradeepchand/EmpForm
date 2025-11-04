terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.4.0"
}

# ---------- Provider ----------
provider "aws" {
  region = var.aws_region
}

# ---------- Security Group ----------
resource "aws_security_group" "empapp_sg" {
  name        = "empapplication-sg"
  description = "Allow SSH and HTTP access for empapplication"

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "empapplication-sg"
  }
}

# ---------- EC2 Instance ----------
resource "aws_instance" "empapp_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.empapp_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y docker
              systemctl enable docker
              systemctl start docker
              EOF

  tags = {
    Name = "EmpApplicationServer"
  }
}

# ---------- Outputs ----------
output "instance_public_ip" {
  description = "Public IP of the deployed instance"
  value       = aws_instance.empapp_instance.public_ip
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.empapp_instance.id
}
