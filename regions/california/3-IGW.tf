resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.california-vpc.id

  tags = {
    Name    = "california-vpc_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
