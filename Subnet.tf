resource "aws_subnet" "Project_Subnet" {
  vpc_id     = aws_vpc.Project_Vpc.id
  cidr_block = var.subnet_prefix
  availability_zone = var.availability_zone

  tags = {
    Name = "Project_Subnet"
  }
}

variable "subnet_prefix" { 
  description ="cidr block of the subnet"
}

variable "availability_zone" { 
  description ="which zone does the subnet reside"
}