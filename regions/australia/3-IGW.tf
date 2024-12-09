resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.australia-vpc.id

  tags = {
    Name    = "australia-vpc_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
