module "vpc" {
  source = "../../modules/vpc"

  name            = "${var.project_name}-vpc"
  cidr            = var.vpc_cidr
  azs             = var.azs
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "eks" {
  source = "../../modules/eks"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.private_subnets

  node_group_name = var.node_group_name
  instance_types  = var.instance_types
  desired_size    = var.desired_size
  min_size        = var.min_size
  max_size        = var.max_size
}

module "ecr" {
  source = "../../modules/ecr"

  name = var.project_name
}

module "iam" {
  source = "../../modules/iam"

  project_name = var.project_name
}