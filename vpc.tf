resource "aws_vpc" "mainvpc" {
  cidr_block = "172.31.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "${terraform.workspace}-vpc"
  }
}

resource "aws_default_network_acl" "default" {
  default_network_acl_id = aws_vpc.mainvpc.default_network_acl_id

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = aws_vpc.mainvpc.cidr_block
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
}

resource "aws_subnet" "subnets" {
  for_each = local.subnets
  vpc_id = each.value.vpc_id
  cidr_block = each.value.cidr_block
  map_public_ip_on_launch = each.value.map_public_ip_on_launch
  availability_zone = each.value.availability_zone
  tags = {
    Name = "${terraform.workspace}-subnet-${each.key}"
  }
}

resource "aws_route" "route" {
  route_table_id = aws_vpc.mainvpc.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.gateway.id
}

resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.mainvpc.id
  tags = {
    Name = "${terraform.workspace}-gateway"
  }
}