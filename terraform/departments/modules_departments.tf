module "hr_department" {
  source = "./hr_department"
  vpc_id = aws_vpc.smt-vpc.id
}

module "management" {
  source = "./management"
  vpc_id = aws_vpc.smt-vpc.id
}

module "organization" {
  source = "./organization"
  vpc_id = aws_vpc.smt-vpc.id
}

module "warehouse" {
  source = "./warehouse"
  vpc_id = aws_vpc.smt-vpc.id
}
