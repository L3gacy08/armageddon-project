# this  makes  vpc.id which is aws_vpc.australia-vpc.id
resource "aws_vpc" "australia-vpc" {
  cidr_block = "10.140.0.0/16"

  tags = {
    Name = "australia-vpc"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}
