resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.sao_paulo_vpc.id

  tags = {
    Name    = "sp_app1_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
