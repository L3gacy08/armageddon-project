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
# resource "aws_ec2_transit_gateway" "lionsdenASG" {
#   description                      = "lionsdenASG transit gateway"
#   default_route_table_association  = "disable"
#   default_route_table_propagation  = "disable"

#   tags = {
#     Name = "lionsdenASG"
#   }
# }

# Peering between Tokyo and Sydney
# resource "aws_vpc_peering_connection" "tokyo_australia_peering" {
#   vpc_id      = aws_vpc.lionsdenASG.id
#   peer_vpc_id = aws_vpc.australia-vpc.id
#   peer_region = "ap-southeast-2"
#   auto_accept = true

#   tags = {
#     Name = "tokyo-australia-peering"
#   }
# }

# # Peering between Tokyo and New York
# resource "aws_vpc_peering_connection" "tokyo_newyork_peering" {
#   vpc_id      = aws_vpc.lionsdenASG.id
#   peer_vpc_id = aws_vpc.new-york-vpc.id
#   peer_region = "us-east-1"
#   auto_accept = true

#   tags = {
#     Name = "tokyo-newyork-peering"
#   }
# }

# # Peering between Sydney and New York
# resource "aws_vpc_peering_connection" "tokyo_london_peering" {
#   vpc_id      = aws_vpc.lionsdenASG.id
#   peer_vpc_id = aws_vpc.london-vpc.id
#   peer_region = "eu-west-2"
#   auto_accept = true

#   tags = {
#     Name = "tokyo-london-peering"
#   }
# }


# resource "aws_vpc_peering_connection" "tokyo_hong_kong_peering" {
#   vpc_id      = aws_vpc.lionsdenASG.id
#   peer_vpc_id = aws_vpc.hong-kong-vpc.id
#   peer_region = "ap-east-1"
#   auto_accept = true

#   tags = {
#     Name = "tokyo-hong-kong-peering"
#   }
# }


# resource "aws_vpc_peering_connection" "tokyo_sao_paulo_peering" {
#   vpc_id      = aws_vpc.lionsdenASG.id
#   peer_vpc_id = aws_vpc.sao_paulo_vpc.id
#   peer_region = "sa-east-1"
#   auto_accept = true

#   tags = {
#     Name = "tokyo-sao-paulo-peering"
#   }
# }



# resource "aws_vpc_peering_connection" "tokyo_california_peering" {
#   vpc_id      = aws_vpc.lionsdenASG.id
#   peer_vpc_id = aws_vpc.london-vpc.id
#   peer_region = "us-west-1"
#   auto_accept = true

#   tags = {
#     Name = "tokyo-california-peering"
#   }
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
    cidr_block = "10.140.0.0/20"
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
    cidr_block = "10.140.0.0/20"
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

