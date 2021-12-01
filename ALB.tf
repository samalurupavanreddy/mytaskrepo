resource "aws_lb" "ALB" {
  name               = "IBMapp-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.myvpc-sg.id]
  subnets            = [aws_subnet.mysubnet-1.id,aws_subnet.mysubnet-2.id]
  enable_deletion_protection = true


  tags = {
    Environment = "production"
  }
}

resource "aws_lb_target_group" "IBM-tggroup" {
  name        = "IBM-tggroup"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.myvpc.id



}

resource "aws_alb_listener" "IBMapp" {
  load_balancer_arn = aws_lb.ALB.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.IBM-tggroup.arn
  }
}