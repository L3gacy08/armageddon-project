# this  makes  vpc.id which is aws_vpc.lionsdenASG.id
resource "aws_vpc" "sao_paulo_vpc" {
  cidr_block = "10.140.0.0/16"

  tags = {
    Name = "sp_vpc_lionsdenASG"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}