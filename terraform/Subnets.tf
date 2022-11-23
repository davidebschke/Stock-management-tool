
variable "cidrBlock" {
type = list
default = [
"10.0.0.0/24",
"10.0.16.0/24",
"10.0.32.0/24",
"10.0.48.0/24",
"10.0.64.0/24",
"10.0.80.0/24",
"10.0.96.0/24",
"10.0.112.0/24",
"10.0.128.0/24",
"10.0.144.0/24"
]
}

resource "aws_subnet" "management_a" {
  vpc_id     = aws_vpc.opt-vpc.id
  cidr_block = var.cidrBlock[0]
  availability_zone = "us-west-2a"

  tags = {
    Name = "management_a"
  }
}

resource "aws_subnet" "management_b" {
  vpc_id     = aws_vpc.opt-vpc.id
  cidr_block = var.cidrBlock[1]
  availability_zone = "us-west-2b"

  tags = {
    Name = "management_b"
  }
}

resource "aws_subnet" "hr_department_a" {
  vpc_id     = aws_vpc.opt-vpc.id
  cidr_block = var.cidrBlock[2]
  availability_zone = "us-west-2a"

  tags = {
    Name = "hr_department_a"
  }
}

resource "aws_subnet" "hr_department_b" {
  vpc_id     = aws_vpc.opt-vpc.id
  cidr_block = var.cidrBlock[3]
  availability_zone = "us-west-2b"

  tags = {
    Name = "hr_department_b"
  }
}

resource "aws_subnet" "organization_a" {
  vpc_id     = aws_vpc.opt-vpc.id
  cidr_block = var.cidrBlock[4]
  availability_zone = "us-west-2a"

  tags = {
    Name = "organization_a"
  }
}

resource "aws_subnet" "organization_b" {
  vpc_id     = aws_vpc.opt-vpc.id
  cidr_block =  var.cidrBlock[5]
  availability_zone = "us-west-2b"

  tags = {
    Name = "organization_b"
  }
}

resource "aws_subnet" "warehouse_a" {
  vpc_id     = aws_vpc.opt-vpc.id
  cidr_block =  var.cidrBlock[6]
  availability_zone = "us-west-2a"

  tags = {
    Name = "warehouse_a"
  }
}

resource "aws_subnet" "warehouse_b" {
  vpc_id     = aws_vpc.opt-vpc.id
  cidr_block =  var.cidrBlock[7]
  availability_zone = "us-west-2b"

  tags = {
    Name = "warehouse_b"
  }
}

resource "aws_subnet" "technician_deployment_a" {
  vpc_id     = aws_vpc.opt-vpc.id
  cidr_block = var.cidrBlock[8]
  availability_zone = "us-west-2a"

  tags = {
    Name = "technician_deployment_a"
  }
}

resource "aws_subnet" "technician_deployment_b" {
  vpc_id     = aws_vpc.opt-vpc.id
  cidr_block =  var.cidrBlock[9]
  availability_zone = "us-west-2b"

  tags = {
    Name = "technician_deployment_b"
  }
}
