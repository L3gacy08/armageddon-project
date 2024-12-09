#These are   for  public

resource "aws_subnet" "public-us-west-1a" {
  vpc_id                  = aws_vpc.california-vpc.id
  cidr_block              = "10.140.13.0/24"
  availability_zone       = "us-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-us-west-1b" {
  vpc_id                  = aws_vpc.california-vpc.id
  cidr_block              = "10.140.14.0/24"
  availability_zone       = "us-west-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


#these are for private
resource "aws_subnet" "private-us-west-1a" {
  vpc_id            = aws_vpc.california-vpc.id
  cidr_block        = "10.140.130.0/24"
  availability_zone = "us-west-1a"

  tags = {
    Name    = "private-us-west-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-us-west-1b" {
  vpc_id            = aws_vpc.california-vpc.id
  cidr_block        = "10.140.140.0/24"
  availability_zone = "us-west-1b"

  tags = {
    Name    = "private-us-west-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

