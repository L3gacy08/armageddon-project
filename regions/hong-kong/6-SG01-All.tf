resource "aws_security_group" "hong-kong-vpc-sg01-servers" {
  name        = "hong-kong-vpc-sg01-servers"
  description = "hong-kong-vpc-sg01-servers"
  vpc_id      = aws_vpc.hong-kong-vpc.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # ingress {
  #   description = "MyEvilBox"
  #   from_port   = 3389
  #   to_port     = 3389
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  egress {
    description = "Syslog"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["10.140.0.0/20"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "hong-kong-vpc-sg01-servers"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }

}





resource "aws_security_group" "hong-kong-vpc-sg02-LB01" {
  name        = "hong-kong-vpc-sg02-LB01"
  description = "hong-kong-vpc-sg02-LB01"
  vpc_id      = aws_vpc.hong-kong-vpc.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "hong-kong-vpc-sg02-LB01"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }

}
