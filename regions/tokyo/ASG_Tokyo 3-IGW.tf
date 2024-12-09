resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.lionsdenASG.id

  tags = {
    Name    = "liondensASG_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

