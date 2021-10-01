resource "aws_subnet" "Project_Subnet" {
  vpc_id     = aws_vpc.Project_Vpc.id
  cidr_block = "10.10.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Project_Subnet"
  }
}
