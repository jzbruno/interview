resource "aws_vpc" "interview" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    "Name" = "interview"
  }
}

resource "aws_subnet" "interview_use1a_pub" {
  vpc_id                          = aws_vpc.interview.id
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-east-1a"
  cidr_block                      = "10.0.1.0/24"
  map_public_ip_on_launch         = true
  tags = {
    "Name" = "interview-use1a-pub"
  }
}

resource "aws_subnet" "interview_use1a_priv" {
  vpc_id                          = aws_vpc.interview.id
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-east-1a"
  cidr_block                      = "10.0.2.0/24"
  map_public_ip_on_launch         = false
  tags = {
    "Name" = "interview-use1a-priv"
  }
}

resource "aws_subnet" "interview_use1b_pub" {
  vpc_id                          = aws_vpc.interview.id
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-east-1b"
  cidr_block                      = "10.0.3.0/24"
  map_public_ip_on_launch         = true
  tags = {
    "Name" = "interview-use1b-pub"
  }
}

resource "aws_subnet" "interview_use1b_priv" {
  vpc_id                          = aws_vpc.interview.id
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-east-1b"
  cidr_block                      = "10.0.4.0/24"
  map_public_ip_on_launch         = false
  tags = {
    "Name" = "interview-use1b-priv"
  }
}

resource "aws_subnet" "interview_use1c_pub" {
  vpc_id                          = aws_vpc.interview.id
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-east-1c"
  cidr_block                      = "10.0.5.0/24"
  map_public_ip_on_launch         = true
  tags = {
    "Name" = "interview-use1c-pub"
  }
}

resource "aws_subnet" "interview_use1c_priv" {
  vpc_id                          = aws_vpc.interview.id
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-east-1c"
  cidr_block                      = "10.0.6.0/24"
  map_public_ip_on_launch         = false
  tags = {
    "Name" = "interview-use1c-priv"
  }
}

resource "aws_internet_gateway" "interview" {
  vpc_id = aws_vpc.interview.id
  tags = {
    Name = "interview"
  }
}

resource "aws_route_table" "interview_pub" {
  vpc_id = aws_vpc.interview.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.interview.id
  }

  tags = {
    Name = "interview-pub"
  }
}

resource "aws_route_table_association" "interview_pub-interview_use1a_pub" {
  subnet_id      = aws_subnet.interview_use1a_pub.id
  route_table_id = aws_route_table.interview_pub.id
}

resource "aws_route_table_association" "interview_pub-interview_use1b_pub" {
  subnet_id      = aws_subnet.interview_use1b_pub.id
  route_table_id = aws_route_table.interview_pub.id
}

resource "aws_route_table_association" "interview_pub-interview_use1c_pub" {
  subnet_id      = aws_subnet.interview_use1c_pub.id
  route_table_id = aws_route_table.interview_pub.id
}

resource "aws_default_route_table" "interview_priv" {
  default_route_table_id = aws_vpc.interview.default_route_table_id

  tags = {
    Name = "interview-priv"
  }
}

resource "aws_route_table_association" "interview_priv-interview_use1a_priv" {
  subnet_id      = aws_subnet.interview_use1a_priv.id
  route_table_id = aws_default_route_table.interview_priv.id
}

resource "aws_route_table_association" "interview_priv-interview_use1b_priv" {
  subnet_id      = aws_subnet.interview_use1b_priv.id
  route_table_id = aws_default_route_table.interview_priv.id
}

resource "aws_route_table_association" "interview_priv-interview_use1c_priv" {
  subnet_id      = aws_subnet.interview_use1c_priv.id
  route_table_id = aws_default_route_table.interview_priv.id
}
