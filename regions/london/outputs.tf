# australia output

output "vpc_id" {
  value = aws_vpc.london-vpc.id
}

output "private_subnet_ids" {
  value = [aws_subnet.private-eu-west-2a.id, aws_subnet.private-eu-west-2b.id]
}