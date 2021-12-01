variable "aws_region" {
    default = "us-east-1"
    type = string
}

variable "aws_access_key" {
    default = "AKIA2WVXR5V2U4437BWF"
    type = string
}

variable "aws_secret_key" {
    default = "pISriQ1kI7Lt2X1aUAC3CHSC4dtt7uQ+69hVduMt"
    type = string
}

variable "vpc_cidr" {
    default = "30.0.0.0/16"
    type = string
}

variable "subnet1_cidr" {
    default = "30.0.1.0/24"
    type = string
}

variable "subnet2_cidr" {
    default = "30.0.2.0/24"
    type = string
}

variable "aws_key_pair" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClaR0eaKqMlX5payn1YQOdnwBJ+r66q8fCm8wCLxN0MMxyetxEoaqamRCSRHXmZSE9+AKEun1JblHa0AiEgjCsrE26977Rk/+UohpjmoeK25L/hrbbriogRqG37dW78M28dCDLqY6P4fS3wXLX8pfxV9LxEaGeqJPJfBEiFM8NlAB64l299gZxxZfDqsim9eJQ2g65zHjhPS/yklp23Gw5hW/s/6pyAgSpvr/ZmUoArmxoxTtr0i2cxrc9UWKFolza8n/IAzzM5hqowhKfnjXD5w9d1l7Vf9AKj/CPLWSUanvnWwdCStqJ4pYJq6LyEYvJxNRhe9454K5Zg05tWEEN rsa-key-20211126"
    type = string
}

variable "aws_ami" {
    default = "ami-0dc2d3e4c0f9ebd18"
    type = string
}
variable "aws_instance_type" {
    default = "t2.micro"
    type = string
}




