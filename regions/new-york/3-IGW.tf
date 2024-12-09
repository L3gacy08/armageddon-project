resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.new-york-vpc.id

  tags = {
    Name    = "new-york-vpc_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
