


resource "aws_subnet" "Geschäftsführung" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.0.0/8"
  availability_zone = "us-west-2a"

  tags = {
    Name = "This is a public subnet"
  }
}