# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "california-vpc" {
  cidr_block = "10.140.96.0/20"

  tags = {
    Name = "california-vpc"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}
