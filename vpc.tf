resource "aws_vpc" "demo" {
  cidr_block       = "70.70.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "demo-vpc"
  }
}
resource "aws_subnet" "demo1" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = "70.70.1.0/28"

  tags = {
    Name = "subnet1"
  }
}
resource "aws_subnet" "demo2" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = "70.70.1.16/28"

  tags = {
    Name = "subnet2"
  }
}
