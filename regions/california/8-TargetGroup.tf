resource "aws_lb_target_group" "california-vpc_tg" {
  name     = "california-vpc-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.california-vpc.id
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
    Name    = "california-vpcTargetGroup"
    Service = "california-vpc"
    Owner   = "User"
    Project = "Web Service"
  }
}
