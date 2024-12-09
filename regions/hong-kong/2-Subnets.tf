#These are   for  public

resource "aws_subnet" "public-ap-east-1a" {
  vpc_id                  = aws_vpc.hong-kong-vpc.id
  cidr_block              = "10.140.81.0/24"
  availability_zone       = "ap-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-east-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-ap-east-1b" {
  vpc_id                  = aws_vpc.hong-kong-vpc.id
  cidr_block              = "10.140.82.0/24"
  availability_zone       = "ap-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-east-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


#these are for private
resource "aws_subnet" "private-ap-east-1a" {
  vpc_id            = aws_vpc.hong-kong-vpc.id
  cidr_block        = "10.140.83.0/24"
  availability_zone = "ap-east-1a"

  tags = {
    Name    = "private-ap-east-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-ap-east-1b" {
  vpc_id            = aws_vpc.hong-kong-vpc.id
  cidr_block        = "10.140.84.0/24"
  availability_zone = "ap-east-1b"

  tags = {
    Name    = "private-ap-east-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

