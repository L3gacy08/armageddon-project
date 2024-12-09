# this  makes  vpc.id which is aws_vpc.australia-vpc.id
resource "aws_vpc" "australia-vpc" {
  cidr_block = "10.140.64.0/20"

  tags = {
    Name = "australia-vpc"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}
