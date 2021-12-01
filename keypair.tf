resource "aws_key_pair" "key" {
  key_name   = "sample-key"
  public_key = var.aws_key_pair
  }