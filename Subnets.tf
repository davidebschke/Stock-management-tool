


resource "aws_subnet" "Geschäftsführung" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.0.0.0/8"
  availability_zone = "us-west-2a"

  tags = {
    Name = "Geschäftsführung"
  }
}

resource "aws_subnet" "Geschäftsführung-Ersatz" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.16.0.0/8"
  availability_zone = "us-west-2b"

  tags = {
    Name = "Geschäftsführung-Ersatz"
  }
}

resource "aws_subnet" "Personalabteilung" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.32.0.0/8"
  availability_zone = "us-west-2a"

  tags = {
    Name = "Personalabteilung"
  }
}

resource "aws_subnet" "Personalabteilung-Ersatz" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.48.0.0/8"
  availability_zone = "us-west-2b"

  tags = {
    Name = "Personalabteilung-Ersatz"
  }
}

resource "aws_subnet" "Planung" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.64.0.0/8"
  availability_zone = "us-west-2a"

  tags = {
    Name = "Planung"
  }
}

resource "aws_subnet" "Planung-Ersatz" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.80.0.0/8"
  availability_zone = "us-west-2b"

  tags = {
    Name = "Planung-Ersatz"
  }
}

resource "aws_subnet" "Personalabteilung-Ersatz" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.48.0.0/8"
  availability_zone = "us-west-2b"

  tags = {
    Name = "Personalabteilung-Ersatz"
  }
}

resource "aws_subnet" "Lager" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.96.0.0/8"
  availability_zone = "us-west-2a"

  tags = {
    Name = "Lager"
  }
}

resource "aws_subnet" "Lager-Ersatz" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.112.0.0/8"
  availability_zone = "us-west-2b"

  tags = {
    Name = "Lager-Ersatz"
  }
}

resource "aws_subnet" "Techniker-Einsatz" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.128.0.0/8"
  availability_zone = "us-west-2a"

  tags = {
    Name = "Techniker-Einsatz"
  }
}

resource "aws_subnet" "Techniker-Einsatz-Ersatz" {
  vpc_id     = aws_vpc.opt-vpc.vpc_id
  cidr_block = "10.144.0.0/8"
  availability_zone = "us-west-2b"

  tags = {
    Name = "Technike-Einsatz-Ersatz"
  }
}
