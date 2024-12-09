# this  makes  vpc.id which is aws_vpc.lionsdenASG.id
resource "aws_vpc" "sao_paulo_vpc" {
  cidr_block = "10.140.48.0/20"

  tags = {
    Name = "sp_vpc_lionsdenASG"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}