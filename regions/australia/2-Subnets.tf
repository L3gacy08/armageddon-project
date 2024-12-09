#These are   for  public

resource "aws_subnet" "public-ap-southeast-2a" {
  vpc_id                  = aws_vpc.australia-vpc.id
  cidr_block              = "10.140.65.0/24"
  availability_zone       = "ap-southeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-2a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-ap-southeast-2b" {
  vpc_id                  = aws_vpc.australia-vpc.id
  cidr_block              = "10.140.66.0/24"
  availability_zone       = "ap-southeast-2b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-2b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


#these are for private
resource "aws_subnet" "private-ap-southeast-2a" {
  vpc_id            = aws_vpc.australia-vpc.id
  cidr_block        = "10.140.67.0/24"
  availability_zone = "ap-southeast-2a"

  tags = {
    Name    = "private-ap-southeast-2a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-ap-southeast-2b" {
  vpc_id            = aws_vpc.australia-vpc.id
  cidr_block        = "10.140.68.0/24"
  availability_zone = "ap-southeast-2b"

  tags = {
    Name    = "private-ap-southeast-2b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


