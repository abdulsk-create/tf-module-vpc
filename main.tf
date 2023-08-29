resource "aws_vpc" "main" {
  cidr_block = var.cidr
}

resource "aws_subnet" "main" {
  for_each = var.subnets
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr
  availability_zone = ""

}