resource "aws_lb_target_group" "new-york-vpc_tg" {
  name     = "new-york-vpc-target-group${random_string.suffix.result}"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.new-york-vpc.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "new-york-vpcTargetGroup"
    Service = "new-york-vpc"
    Owner   = "User"
    Project = "Web Service"
  }
}
