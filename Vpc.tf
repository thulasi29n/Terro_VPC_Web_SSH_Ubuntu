resource "aws_vpc" "Project_Vpc" {
  cidr_block = var.vpc_prefix
    tags = {
    Name = "Project_Vpc"
  }
}

variable "vpc_prefix" { 
  description ="Details of the VPC prefix"
}