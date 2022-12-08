# Create VPC
resource "aws_vpc" "opt-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "OPT-VPC"
  }
}
