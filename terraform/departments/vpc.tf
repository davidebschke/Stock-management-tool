# Create VPC
resource "aws_vpc" "smt-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "SMT-VPC"
  }
}


