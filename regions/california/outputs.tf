output "vpc_id" {
  value = aws_vpc.california-vpc.id
}

output "private_subnet_ids" {
  value = [aws_subnet.private-us-west-1a.id, aws_subnet.private-us-west-1b.id]
}
