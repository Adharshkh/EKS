cluster_name = "Warlord"
key_pair = "key1"
instance_types = ["t3.medium"]
node_group_name = "Warlord-cluster-node-group"
public_access_cidrs = ["0.0.0.0/0"]
tags = "Warlord-cluster-vpc"
vpc_cidr = "10.0.0.0/16"
instance_tenancy = "default"
public_sn_count = "2"
public_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
rt_route_cidr_block = "0.0.0.0/0"
access_ip              = "0.0.0.0/0"
scaling_desired_size = "3"
scaling_max_size = "3"
scaling_min_size = "3"
map_public_ip_on_launch = "true"
key_name = "key1"
ami_id = "ami-05fb0b8c1424f266b"

#ecr variables
enable_ecr              = true
enable_lifecycle_policy = true
ecr_repo_names          = ["spring-app-dev", "spring-app-prod"]
image_tag_mutability    = "MUTABLE"