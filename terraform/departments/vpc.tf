# Create VPC
resource "aws_vpc" "smt-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "SMT-VPC"
  }
}

module "hr_department" {
  source = "./hr_department"
  vpc_id = aws_vpc.smt-vpc.id
}
