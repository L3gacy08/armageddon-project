# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "hong-kong-vpc" {
  cidr_block = "10.140.0.0/16"

  tags = {
    Name = "hong-kong-vpc"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}
