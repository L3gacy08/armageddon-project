resource "aws_vpc" "australia_vpc" {
  cidr_block = "10.140.0.0/16"
  tags = {
    Name = "australia-vpc"
  }
}

resource "aws_subnet" "private_ap_southeast_2a" {
  vpc_id            = aws_vpc.australia_vpc.id
  cidr_block        = "10.140.90.0/24"
  availability_zone = "ap-southeast-2a"
  tags = {
    Name = "private-ap-southeast-2a"
  }
}

resource "aws_subnet" "private_ap_southeast_2b" {
  vpc_id            = aws_vpc.australia_vpc.id
  cidr_block        = "10.140.100.0/24"
  availability_zone = "ap-southeast-2b"
  tags = {
    Name = "private-ap-southeast-2b"
  }
}
