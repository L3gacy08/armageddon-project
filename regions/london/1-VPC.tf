# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "london-vpc" {
  cidr_block = "10.140.32.0/20"

  tags = {
    Name = "london-VPC"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}
