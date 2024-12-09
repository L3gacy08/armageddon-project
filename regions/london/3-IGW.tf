resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.london-vpc.id

  tags = {
    Name    = "london-vpc-IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
