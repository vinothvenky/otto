# VPC - Live

resource "aws_vpc" "idl-live-network" {
  provider          = aws.pilot_provider
  # cidr_block           = "${lookup(var.vpc_cidr,terraform.workspace)}"
  cidr_block           = var.vpc_cidr["nw-live"]
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name        = var.vpc_tag_name["nw-live"]
    #Environment = terraform.workspace
  }
}

# Public Subnets - Live

resource "aws_subnet" "idl-live-public-ig1" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-live-network.id 
  cidr_block        = var.nw_live_public_subnet_cidr_block["nw-live-public-ig1"] 
  availability_zone = var.nw_subnet_az["az_a"]
  tags = {
    Name        = var.subnet_tag_names["nw-live-public-ig1"] 
    # Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-live-public-ig2" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-live-network.id
  cidr_block        = var.nw_live_public_subnet_cidr_block["nw-live-public-ig2"]
  availability_zone = var.nw_subnet_az["az_a"]
  tags = {
    Name        = var.subnet_tag_names["nw-live-public-ig2"]
    # Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-live-public-ig3" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-live-network.id
  cidr_block        = var.nw_live_public_subnet_cidr_block["nw-live-public-ig3"]
  availability_zone = var.nw_subnet_az["az_b"]
  tags = {
    Name        = var.subnet_tag_names["nw-live-public-ig3"]
   }
}

resource "aws_subnet" "idl-live-public-ig4" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-live-network.id
  cidr_block        = var.nw_live_public_subnet_cidr_block["nw-live-public-ig4"]
  availability_zone = var.nw_subnet_az["az_b"]
  tags = {
    Name        = var.subnet_tag_names["nw-live-public-ig4"]
   }
}

# Private subnets
resource "aws_subnet" "idl-live-private-fw1" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-live-network.id
  cidr_block        = var.nw_live_private_subnet_cidr_block["nw-live-private-fw1"]
  availability_zone = var.nw_subnet_az["az_a"]
  tags = {
    Name        = var.subnet_tag_names["nw-live-private-fw1"]
    # Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-live-private-fw2" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-live-network.id
  cidr_block        = var.nw_live_private_subnet_cidr_block["nw-live-private-fw2"]
  availability_zone = var.nw_subnet_az["az_a"]
  tags = {
    Name        = var.subnet_tag_names["nw-live-private-fw2"]
    }
}

resource "aws_subnet" "idl-live-private-fw3" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-live-network.id
  cidr_block        = var.nw_live_private_subnet_cidr_block["nw-live-private-fw3"]
  availability_zone = var.nw_subnet_az["az_b"]
  tags = {
    Name        = var.subnet_tag_names["nw-live-private-fw3"]
    }
}

resource "aws_subnet" "idl-live-private-fw4" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-live-network.id
  cidr_block        = var.nw_live_private_subnet_cidr_block["nw-live-private-fw4"]
  availability_zone = var.nw_subnet_az["az_b"]
  tags = {
    Name        = var.subnet_tag_names["nw-live-private-fw4"]
    }
}



# Live App Subnet

# resource "aws_subnet" "idl-live-app1" {
#   vpc_id            = aws_vpc.idl-securitymgmt-network.id
#   cidr_block        = var.nw_live_app_subnet_cidr_block["nw-live-app1"]
#   availability_zone = var.nw_subnet_az["az_a"]
#   tags = {
#     Name        = var.subnet_tag_names["nw-live-app1"]
    
#   }
# }

# resource "aws_subnet" "idl-live-app2" {
#   vpc_id            = aws_vpc.idl-securitymgmt-network.id
#   cidr_block        = var.nw_live_app_subnet_cidr_block["nw-live-app2"]
#   availability_zone = var.nw_subnet_az["az_a"]
#   tags = {
#     Name        = var.subnet_tag_names["nw-live-app2"]
    
#   }
# }

# resource "aws_subnet" "idl-live-app3" {
#   vpc_id            = aws_vpc.idl-securitymgmt-network.id
#   cidr_block        = var.nw_live_app_subnet_cidr_block["nw-live-app3"]
#   availability_zone = var.nw_subnet_az["az_b"]
#   tags = {
#     Name        = var.subnet_tag_names["nw-live-app3"]
    
#   }
# }

# resource "aws_subnet" "idl-live-app4" {
#   vpc_id            = aws_vpc.idl-securitymgmt-network.id
#   cidr_block        = var.nw_live_app_subnet_cidr_block["nw-live-app4"]
#   availability_zone = var.nw_subnet_az["az_b"]
#   tags = {
#     Name        = var.subnet_tag_names["nw-live-app4"]
    
#   }
# }


# resource "aws_subnet" "idl-live-app5" {
#   vpc_id            = aws_vpc.idl-securitymgmt-network.id
#   cidr_block        = var.nw_live_app_subnet_cidr_block["nw-live-app5"]
#   availability_zone = var.nw_subnet_az["az_c"]
#   tags = {
#     Name        = var.subnet_tag_names["nw-live-app5"]
    
#   }
# }

# Live Transit Gateway
resource "aws_subnet" "live-tgw-attac1" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-live-network.id
  cidr_block        = var.nw_live_tgw_subnet_cidr_block["nw-live-tgw-attac1"]
  availability_zone = var.nw_subnet_az["az_a"]
  tags = {
    Name        = var.subnet_tag_names["nw-live-tgw-attac1"]
    }
}

resource "aws_subnet" "live-tgw-attac2" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-live-network.id
  cidr_block        = var.nw_live_tgw_subnet_cidr_block["nw-live-tgw-attac2"]
  availability_zone = var.nw_subnet_az["az_b"]
  tags = {
    Name        = var.subnet_tag_names["nw-live-tgw-attac2"]
    }
}

resource "aws_subnet" "live-tgw-attac3" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-live-network.id
  cidr_block        = var.nw_live_tgw_subnet_cidr_block["nw-live-tgw-attac3"]
  availability_zone = var.nw_subnet_az["az_c"]
  tags = {
    Name        = var.subnet_tag_names["nw-live-tgw-attac3"]
    }
}

#Live Rout Table
resource "aws_route_table" "idl-live-fw-private_RT" {
  provider = aws.pilot_provider
  vpc_id   = aws_vpc.idl-live-network.id
  tags = {
    Name        = "otto-Live-PrivateFW-RT"
    Environment = terraform.workspace
  }
}

# Associate subnets fw1, fw2, fw3 and fw4  with fw_private_routtable
resource "aws_route_table_association" "idl-live-fw-private_association_1" {
  provider       = aws.pilot_provider
  subnet_id      = aws_subnet.idl-live-private-fw1.id
  route_table_id = aws_route_table.idl-live-fw-private_RT.id
}

resource "aws_route_table_association" "idl-live-fw-private_association_2" {
  provider       = aws.pilot_provider
  subnet_id      = aws_subnet.idl-live-private-fw2.id
  route_table_id = aws_route_table.idl-live-fw-private_RT.id
}

resource "aws_route_table_association" "idl-live-fw-private_association_3" {
  provider       = aws.pilot_provider
  subnet_id      = aws_subnet.idl-live-private-fw3.id
  route_table_id = aws_route_table.idl-live-fw-private_RT.id
}

resource "aws_route_table_association" "idl-live-fw-private_association_4" {
  provider       = aws.pilot_provider
  subnet_id      = aws_subnet.idl-live-private-fw4.id
  route_table_id = aws_route_table.idl-live-fw-private_RT.id
}





# VPC - Non-Live
resource "aws_vpc" "idl-nonlive-network" {
  provider          = aws.pilot_provider
  # cidr_block           = "${lookup(var.vpc_cidr,terraform.workspace)}"
  cidr_block           = var.vpc_cidr["nw-non-live"]
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name        = var.vpc_tag_name["nw-non-live"]
    #Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-public-ig" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_public_subnet_cidr_block["nw-nonlive-public-ig"]
  availability_zone = var.nw_subnet_az["az_a"]
  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-public-ig"]
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-private-fw1" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_private_subnet_cidr_block["nw-nonlive-private-fw1"]
  availability_zone = var.nw_subnet_az["az_a"]
  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-private-fw1"]
    Environment = terraform.workspace
  }
}


# VPC - Non-Live
resource "aws_vpc" "idl-securitymgmt-network" {
  provider          = aws.pilot_provider
  # cidr_block           = "${lookup(var.vpc_cidr,terraform.workspace)}"
  cidr_block           = var.vpc_cidr["nw-securitymgmt"]
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name        = var.vpc_tag_name["nw-securitymgmt"]
    #Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-securitymgmt-private-fw1" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-securitymgmt-network.id
  cidr_block        = var.nw_securitymgmt_private_subnet_cidr_block["nw-securitymgmt-private-fw1"]
  availability_zone = var.nw_subnet_az["az_c"]
  tags = {
    Name        = var.subnet_tag_names["nw-securitymgmt-private-fw1"]
    
  }
}

resource "aws_subnet" "idl-securitymgmt-private-fw2" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-securitymgmt-network.id
  cidr_block        = var.nw_securitymgmt_private_subnet_cidr_block["nw-securitymgmt-private-fw2"]
  availability_zone = var.nw_subnet_az["az_b"]
  tags = {
    Name        = var.subnet_tag_names["nw-securitymgmt-private-fw2"]
    
  }
}

resource "aws_subnet" "idl-securitymgmt-private-fw3" {
  provider          = aws.pilot_provider
  vpc_id            = aws_vpc.idl-securitymgmt-network.id
  cidr_block        = var.nw_securitymgmt_private_subnet_cidr_block["nw-securitymgmt-private-fw3"]
  availability_zone = var.nw_subnet_az["az_a"]
  tags = {
    Name        = var.subnet_tag_names["nw-securitymgmt-private-fw3"]
    
  }
}



   