#These are   for  public

resource "aws_subnet" "public-eu-west-2a" {
  vpc_id                  = aws_vpc.london-vpc.id
  cidr_block              = "10.140.5.0/24"
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-west-2a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-eu-west-2b" {
  vpc_id                  = aws_vpc.london-vpc.id
  cidr_block              = "10.140.6.0/24"
  availability_zone       = "eu-west-2b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-west-2b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

#these are for private
resource "aws_subnet" "private-eu-west-2a" {
  vpc_id            = aws_vpc.london-vpc.id
  cidr_block        = "10.140.50.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name    = "private-eu-west-2a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-eu-west-2b" {
  vpc_id            = aws_vpc.london-vpc.id
  cidr_block        = "10.140.60.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name    = "private-eu-west-2b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


