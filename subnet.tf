
resource "aws_subnet" "mysubnet-1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet1_cidr
  availability_zone = "us-east-1a"


  tags = {
    Name = "mysubnet-1"
  }
}

resource "aws_subnet" "mysubnet-2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet2_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = "mysubnet-2"
  }
}