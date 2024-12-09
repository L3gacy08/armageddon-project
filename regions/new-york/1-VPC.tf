# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "new-york-vpc" {
  cidr_block = "10.140.16.0/20"

  tags = {
    Name = "app1"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}
