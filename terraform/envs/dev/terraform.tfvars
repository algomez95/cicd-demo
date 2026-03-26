aws_region      = "us-east-1"
project_name    = "cicd-demo"
cluster_name    = "cicd-demo-eks"
cluster_version = "1.29"

vpc_cidr = "10.0.0.0/16"

azs = [
  "us-east-1a",
  "us-east-1b"
]

public_subnets = [
  "10.0.101.0/24",
  "10.0.102.0/24"
]

private_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

node_group_name = "cicd-demo-nodes"

instance_types = [
  "t3.medium"
]

desired_size = 1
min_size     = 1
max_size     = 2