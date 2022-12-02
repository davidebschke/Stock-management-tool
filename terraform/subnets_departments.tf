module "hr_department" {
  source = "./modules/subnets"
  vpc_id = aws_vpc.opt-vpc.id
  subnets = [{
    availability_zone = "us-west-2a"
    cidr_block        = "10.0.0.0/24"
    name              = "hr_department_a"
    }, {
    availability_zone = "us-west-2b"
    cidr_block        = "10.0.16.0/24"
    name              = "hr_department_b"
  }]
}

module "management" {
  source = "./modules/subnets"
  vpc_id = aws_vpc.opt-vpc.id
  subnets = [{
    availability_zone = "us-west-2a"
    cidr_block        = "10.0.32.0/24"
    name              = "management_a"
    }, {
    availability_zone = "us-west-2b"
    cidr_block        = "10.0.48.0/24"
    name              = "management_b"
  }]
}

module "organization" {
  source = "./modules/subnets"
  vpc_id = aws_vpc.opt-vpc.id
  subnets = [{
    availability_zone = "us-west-2a"
    cidr_block        = "10.0.64.0/24"
    name              = "organization_a"
    }, {
    availability_zone = "us-west-2b"
    cidr_block        = "10.0.80.0/24"
    name              = "organization_b"
  }]
}

module "warehouse" {
  source = "./modules/subnets"
  vpc_id = aws_vpc.opt-vpc.id
  subnets = [{
    availability_zone = "us-west-2a"
    cidr_block        = "10.0.96.0/24"
    name              = "warehouse_a"
    }, {
    availability_zone = "us-west-2b"
    cidr_block        = "10.0.112.0/24"
    name              = "warehouse_b"
  }]
}
