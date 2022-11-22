
resource "aws_subnet" "management_a" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.0.0/16"
  availability_zone = "us-west-2a"

  tags = {
    Name = "management_a"
  }
}

resource "aws_subnet" "management_b" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.16.0/16"
  availability_zone = "us-west-2b"

  tags = {
    Name = "management_b"
  }
}

resource "aws_subnet" "hr_department_a" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.32.0/16"
  availability_zone = "us-west-2a"

  tags = {
    Name = "hr_department_a"
  }
}

resource "aws_subnet" "hr_department_b" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.48.0/16"
  availability_zone = "us-west-2b"

  tags = {
    Name = "hr_department_b"
  }
}

resource "aws_subnet" "organization_a" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.64.0/16"
  availability_zone = "us-west-2a"

  tags = {
    Name = "organization_a"
  }
}

resource "aws_subnet" "organization_b" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.80.0/16"
  availability_zone = "us-west-2b"

  tags = {
    Name = "organization_b"
  }
}

resource "aws_subnet" "warehouse_a" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.96.0/16"
  availability_zone = "us-west-2a"

  tags = {
    Name = "warehouse_a"
  }
}

resource "aws_subnet" "warehouse_b" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.112.0/16"
  availability_zone = "us-west-2b"

  tags = {
    Name = "warehouse_b"
  }
}

resource "aws_subnet" "technician_deployment_a" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.128.0/16"
  availability_zone = "us-west-2a"

  tags = {
    Name = "technician_deployment_a"
  }
}

resource "aws_subnet" "technician_deployment_b" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.144.0/16"
  availability_zone = "us-west-2b"

  tags = {
    Name = "technician_deployment_b"
  }
}
