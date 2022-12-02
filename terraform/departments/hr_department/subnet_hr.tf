module "hr_department" {
  source = "../../modules/subnets"
  vpc_id = var.vpc_id
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

variable "vpc_id" {
  type = string
  
}