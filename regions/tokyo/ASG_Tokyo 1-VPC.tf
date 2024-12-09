# this  makes  vpc.id which is aws_vpc.lionsdenASG.id
resource "aws_vpc" "lionsdenASG" {
  cidr_block = "10.140.0.0/20"

  tags = {
    Name = "lionsdenASG"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}
