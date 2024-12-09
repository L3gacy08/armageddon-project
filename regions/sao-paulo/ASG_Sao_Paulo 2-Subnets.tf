#These are   for  public

resource "aws_subnet" "public-sa-east-1a" {
  vpc_id                  = aws_vpc.sao_paulo_vpc.id
  cidr_block              = "10.140.49.0/24"
  availability_zone       = "sa-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-sa-east-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-sa-east-1b" {
  vpc_id                  = aws_vpc.sao_paulo_vpc.id
  cidr_block              = "10.140.50.0/24"
  availability_zone       = "sa-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-sa-east-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

#these are for private
resource "aws_subnet" "private-sa-east-1a" {
  vpc_id            = aws_vpc.sao_paulo_vpc.id
  cidr_block        = "10.140.51.0/24"
  availability_zone = "sa-east-1a"

  tags = {
    Name    = "private-sa-east-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-sa-east-1b" {
  vpc_id            = aws_vpc.sao_paulo_vpc.id
  cidr_block        = "10.140.52.0/24"
  availability_zone = "sa-east-1b"

  tags = {
    Name    = "private-sa-east-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
