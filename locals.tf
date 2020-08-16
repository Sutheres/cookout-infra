locals {
  subnets = {
    public-2a = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.128.0/20"
      map_public_ip_on_launch = true
      availability_zone       = "us-west-2a"
    }
    private-a-2a = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.0.0/19"
      map_public_ip_on_launch = false
      availability_zone       = "us-west-2a"
    }
    private-b-2a = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.192.0/21"
      map_public_ip_on_launch = false
      availability_zone       = "us-west-2a"
    }
    spare-2a = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.224.0/21"
      map_public_ip_on_launch = false
      availability_zone       = "us-west-2a"
    }

    public-2b = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.144.0/20"
      map_public_ip_on_launch = true
      availability_zone       = "us-west-2b"
    }
    private-a-2b = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.32.0/19"
      map_public_ip_on_launch = false
      availability_zone       = "us-west-2b"
    }
    private-b-2b = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.200.0/21"
      map_public_ip_on_launch = false
      availability_zone       = "us-west-2b"
    }
    spare-2b = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.232.0/21"
      map_public_ip_on_launch = false
      availability_zone       = "us-west-2b"
    }

    public-2c = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.160.0/20"
      map_public_ip_on_launch = true
      availability_zone       = "us-west-2c"
    }
    private-a-2c = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.64.0/19"
      map_public_ip_on_launch = false
      availability_zone       = "us-west-2c"
    }
    private-b-2c = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.208.0/21"
      map_public_ip_on_launch = false
      availability_zone       = "us-west-2c"
    }
    spare-2c = {
      vpc_id                  = aws_vpc.mainvpc.id
      cidr_block              = "172.31.240.0/21"
      map_public_ip_on_launch = false
      availability_zone       = "us-west-2c"
    }
  }
}