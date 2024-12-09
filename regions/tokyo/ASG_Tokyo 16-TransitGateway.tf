module "london" {
  source = "../london"
}

module "australia" {
  source = "../australia"
}

module "california" {
  source = "../california"
}

module "hong_kong" {
  source = "../hong-kong"
}

module "new_york" {
  source = "../new-york"
}

module "sao_paulo" {
  source = "../sao-paulo"
}



# Transit Gateway for lionsdenASG
resource "aws_ec2_transit_gateway" "lionsdenASG" {
  description                      = "lionsdenASG transit gateway"
  default_route_table_association  = "disable"
  default_route_table_propagation  = "disable"

  tags = {
    Name = "lionsdenASG"
  }
}





# VPC attachment for Tokyo Transit Gateway LionsdenASG
# resource "aws_ec2_transit_gateway_vpc_attachment" "tokyo_attachment" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   vpc_id             = aws_vpc.lionsdenASG.id
#   subnet_ids = [aws_subnet.private-ap-northeast-1a.id, aws_subnet.private-ap-northeast-1c.id]


#   tags = {
#     Name = "tokyo-attachment"
#   }
# }


# VPC attachment for Australia Transit Gateway LionsdenASG
# resource "aws_ec2_transit_gateway_vpc_attachment" "australia_attachment" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   vpc_id = module.australia.vpc_id
#   subnet_ids = module.australia.private_subnet_ids


#   tags = {
#     Name = "australia-attachment"
#   }
# }



# VPC attachment for California
# resource "aws_ec2_transit_gateway_vpc_attachment" "california_attachment" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   vpc_id             = module.california.vpc_id
#   subnet_ids         = module.california.private_subnet_ids

#   tags = {
#     Name = "california-attachment"
#   }
# }

# # VPC attachment for Hong Kong
# resource "aws_ec2_transit_gateway_vpc_attachment" "hong_kong_attachment" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   vpc_id             = module.hong_kong.vpc_id
#   subnet_ids         = module.hong_kong.private_subnet_ids

#   tags = {
#     Name = "hong-kong-attachment"
#   }
# }

# # VPC attachment for London
# resource "aws_ec2_transit_gateway_vpc_attachment" "london_attachment" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   vpc_id             = module.london.vpc_id
#   subnet_ids         = module.london.private_subnet_ids

#   tags = {
#     Name = "london-attachment"
#   }
# }

# # VPC attachment for New York
# resource "aws_ec2_transit_gateway_vpc_attachment" "new_york_attachment" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   vpc_id             = module.new_york.vpc_id
#   subnet_ids         = module.new_york.private_subnet_ids

#   tags = {
#     Name = "new-york-attachment"
#   }
# }

# # VPC attachment for São Paulo
# resource "aws_ec2_transit_gateway_vpc_attachment" "sao_paulo_attachment" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   vpc_id             = module.sao_paulo.vpc_id
#   subnet_ids         = module.sao_paulo.private_subnet_ids

#   tags = {
#     Name = "sao-paulo-attachment"
#   }
# }


# # Transit Gateway Route Table for Tokyo
# resource "aws_ec2_transit_gateway_route_table" "tokyo_rt" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   tags = {
#     Name = "tokyo-tgw-rt"
#   }
# }

# # Transit Gateway Route Table for New York
# resource "aws_ec2_transit_gateway_route_table" "new_york_rt" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   tags = {
#     Name = "new-york-tgw-rt"
#   }
# }

# # Transit Gateway Route Table for London
# resource "aws_ec2_transit_gateway_route_table" "london_rt" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   tags = {
#     Name = "london-tgw-rt"
#   }
# }

# # Transit Gateway Route Table for São Paulo
# resource "aws_ec2_transit_gateway_route_table" "sao_paulo_rt" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   tags = {
#     Name = "sao-paulo-tgw-rt"
#   }
# }

# # Transit Gateway Route Table for Australia
# resource "aws_ec2_transit_gateway_route_table" "australia_rt" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   tags = {
#     Name = "australia-tgw-rt"
#   }
# }

# # Transit Gateway Route Table for Hong Kong
# resource "aws_ec2_transit_gateway_route_table" "hong_kong_rt" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   tags = {
#     Name = "hong-kong-tgw-rt"
#   }
# }

# # Transit Gateway Route Table for California
# resource "aws_ec2_transit_gateway_route_table" "california_rt" {
#   transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   tags = {
#     Name = "california-tgw-rt"
#   }
# }



# # Tokyo route Association
# resource "aws_ec2_transit_gateway_route_table_association" "tokyo_assoc" {
#   transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tokyo_attachment.id
#   transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tokyo_rt.id
# }

# # New York route Association
# resource "aws_ec2_transit_gateway_route_table_association" "new_york_assoc" {
#   transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.new_york_attachment.id
#   transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.new_york_rt.id
# }

# # London route Association
# resource "aws_ec2_transit_gateway_route_table_association" "london_assoc" {
#   transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.london_attachment.id
#   transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.london_rt.id
# }

# # São Paulo route Association
# resource "aws_ec2_transit_gateway_route_table_association" "sao_paulo_assoc" {
#   transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.sao_paulo_attachment.id
#   transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.sao_paulo_rt.id
# }

# # Australia route Association
# resource "aws_ec2_transit_gateway_route_table_association" "australia_assoc" {
#   transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.australia_attachment.id
#   transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.australia_rt.id
# }

# # Hong Kong route Association
# resource "aws_ec2_transit_gateway_route_table_association" "hong_kong_assoc" {
#   transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.hong_kong_attachment.id
#   transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.hong_kong_rt.id
# }

# # California route Association
# resource "aws_ec2_transit_gateway_route_table_association" "california_assoc" {
#   transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.california_attachment.id
#   transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.california_rt.id
# }








# Route Table for Transit Gateway LionsdenASG
# resource "aws_route_table" "lionsdenASG_RT" {
#   vpc_id = aws_vpc.lionsdenASG.id

#   # Route for VPC-to-VPC traffic through Transit Gateway
#   route {
#     cidr_block         = "10.140.0.0/16"
#     transit_gateway_id = aws_ec2_transit_gateway.lionsdenASG.id
#   }

#   tags = {
#     Name = "lionsdenASG-RT"
#   }
# }


# Network ACL for Transit Gateway LionsdenASG
resource "aws_default_network_acl" "lionsdenASG_NACL" {
  default_network_acl_id = aws_vpc.lionsdenASG.default_network_acl_id

  # Ingress Rule for HTTP (Restrict to internal VPC CIDR)
  ingress {
    rule_no    = 100
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "10.140.0.0/16"
    from_port  = 80
    to_port    = 80
  }

  # Ingress Rule for SSH (Restrict to trusted IPs or VPC CIDR)
  ingress {
    rule_no    = 110
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "10.140.0.0/16"
    from_port  = 22
    to_port    = 22
  }

  # Ingress Rule for Syslog (Restrict to internal VPC CIDR)
  ingress {
    rule_no    = 120
    protocol   = "udp"
    action     = "allow"
    cidr_block = "10.140.0.0/16"
    from_port  = 514
    to_port    = 514
  }

  # Deny all other inbound traffic
  ingress {
    rule_no    = 130
    protocol   = "-1"
    action     = "deny"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  # Egress Rule for Syslog Server (Block outbound traffic)
  egress {
    rule_no    = 100
    protocol   = "-1"
    action     = "deny"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name    = "lionsdenASG-NACL"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

