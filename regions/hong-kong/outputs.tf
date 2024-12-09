output "vpc_id" {
  value = aws_vpc.hong-kong-vpc.id
}

output "private_subnet_ids" {
  value = [aws_subnet.private-ap-east-1a.id, aws_subnet.private-ap-east-1b.id]
}
