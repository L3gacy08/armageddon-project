# tokyo-vpc output
output "lionsdenASG" {
    value = aws_vpc.lionsdenASG.id
}


# # tokyo-vpc public subnet output
# output "lionsdenASG-public-subnet-ids" {
#     value = aws_subnet.public_subnets[*].id
# }

# # tokyo-vpc public subnet output
# output "lionsdenASG-private-subnet-ids" {
#     value = aws_subnet.private_subnets[*].id
# }
