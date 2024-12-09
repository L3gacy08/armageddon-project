resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.hong-kong-vpc.id

  tags = {
    Name    = "hong-kong-vpc_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
