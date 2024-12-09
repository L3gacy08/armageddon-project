# australia output

output "vpc_id" {
  value = aws_vpc.sao_paulo_vpc.id
}

output "private_subnet_ids" {
  value = [aws_subnet.private-sa-east-1a.id, aws_subnet.private-sa-east-1b.id]
}