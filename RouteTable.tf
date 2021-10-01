resource "aws_route_table" "Project_RT" {
  vpc_id = aws_vpc.Project_Vpc.id

  route = [
        {
          cidr_block = var.input_route
          gateway_id = aws_internet_gateway.Project_GW.id
        },
        {
          ipv6_cidr_block        = "::/0"
          egress_only_gateway_id=aws_egress_only_internet_gateway.Project_GW.id
        }
      ]


  tags = {
    Name = "Project_RT"
  }
}
variable "input_route" { 
  description ="which traffic will the gateway allow"
}