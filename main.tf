terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.59.0" # If new version is announced then keep attention to here
    }
  }
}

locals {
  mytag = "Terraform"
  tag2  = "Roman-Numerals"
}

provider "aws" {
  # Configuration options
  # Write your access key and Secret Access key here to use 
  # Or you can use AWS CLI configure file to use it 
}


data "aws_ami" "aws_ins_data" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*"]
  }
}

resource "aws_security_group" "aws_sec" {
  name = "allow_tls"
  tags = {
    "Name" = "${local.mytag}-sec-group"
  }

  dynamic "ingress" {
    for_each = var.aws_sec_grop
    iterator = port
    content {
      description = "HTTP,SSH,HTTPS"
      from_port   = port.value
      to_port     = port.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    description = "ALL"
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
  }
}

resource "aws_instance" "aws_inst1" {
  ami                    = data.aws_ami.aws_ins_data.id
  instance_type          = var.aws_instance_type
  key_name               = var.key_name
  count = var.aws_count
  vpc_security_group_ids = [aws_security_group.aws_sec.id]
  tags = {
    "Name" = "${local.mytag}-${local.tag2}-Project"
  }

  user_data = <<EOF
  #! /bin/bash
  yum update -y
  yum install python3 -y
  pip3 install flask
  yum install git -y
  cd /home/ec2-user
  wget -P templates https://raw.githubusercontent.com/eneseren25/Terraform-Roman-Numerals-Converter/main/templates/index.html
  wget -P templates https://raw.githubusercontent.com/eneseren25/Terraform-Roman-Numerals-Converter/main/templates/result.html
  wget https://raw.githubusercontent.com/eneseren25/Terraform-Roman-Numerals-Converter/main/app.py
  python3 app.py

  EOF
}
