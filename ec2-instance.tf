resource "aws_instance" "first-instance" {
  ami = var.aws_ami
  instance_type = var.aws_instance_type
  subnet_id     = aws_subnet.mysubnet-1.id
  vpc_security_group_ids = [aws_security_group.myvpc-sg.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.key.id

  tags = {
    Name = "test-server"
  
  }
  user_data = <<-EOF
    #! /bin/bash
    yum update -y
    aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 735898103157.dkr.ecr.us-east-1.amazonaws.com
    docker build -t task-repo .
    docker tag task-repo:latest 735898103157.dkr.ecr.us-east-1.amazonaws.com/task-repo:latest
    docker tag task-repo:latest 735898103157.dkr.ecr.us-east-1.amazonaws.com/task-repo:latest

  EOF
}

