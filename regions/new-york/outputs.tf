# australia output

output "vpc_id" {
  value = aws_vpc.new-york-vpc.id
}

output "private_subnet_ids" {
  value = [aws_subnet.private-us-east-1a.id, aws_subnet.private-us-east-1b.id]
}