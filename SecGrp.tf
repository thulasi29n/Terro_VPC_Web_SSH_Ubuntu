resource "aws_security_group" "Project_SG" {
  name        = "allow_https,http,ssh"
  description = "Allow Web inbound traffic"
  vpc_id      = aws_vpc.Project_Vpc.id

    ingress{
    
      description      = "HTTPS from VPC"
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }
    ingress{
     
      description      = "HTTP"
      from_port        = var.SG_HTTP_PORT
      to_port          = var.SG_HTTP_PORT
      protocol         = var.SG_PROTOCOL
      cidr_blocks      = var.SG_CIDR
    }
    ingress{
     
      description      = "SSH"
      from_port        = var.SG_SSHPORT
      to_port          = var.SG_SSHPORT
      protocol         = var.SG_PROTOCOL
      cidr_blocks      = var.SG_CIDR
    }
  

  egress {
      description      = "Ouput Everything"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  

  tags = {
    Name = "Project_SG"
  }
}

variable "SG_HTTP_PORT" {
  
}

variable "SG_SSHPORT" {
  
}
variable "SG_PROTOCOL" {
  
}

variable "SG_CIDR" {
  
}