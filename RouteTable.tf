resource "aws_route_table" "Project_RT" {
  vpc_id = aws_vpc.Project_Vpc.id

  route = [
        {
          cidr_block = "0.0.0.0/0"
          gateway_id = aws_internet_gateway.Project_GW.id
        },
        {
          ipv6_cidr_block        = "::/0"
          egress_only_gateway_id=aws_internet_gateway.Project_GW.id
        }
      ]


  tags = {
    Name = "Project_RT"
  }
}
