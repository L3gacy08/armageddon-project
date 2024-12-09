output "vpc_id" {
  value = aws_vpc.australia-vpc.id
}

output "private_subnet_ids" {
  value = [aws_subnet.private-ap-southeast-2a.id, aws_subnet.private-ap-southeast-2b.id]
}
