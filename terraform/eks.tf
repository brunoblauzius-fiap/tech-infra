module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.CLUSTER_NAME
  cluster_version = "1.29"

  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = false


  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  

  # EKS Managed Node Group(s)
  # eks_managed_node_group_defaults = {
  #   disk_size = 20
  #   instance_types = ["m6i.large", "m5.large", "m5n.large", "m5zn.large"]
  # }

  eks_managed_node_groups = {
    fiap_tech = {
      min_size     = 1
      max_size     = 4
      desired_size = 1
      vpc_security_group_ids = [aws_security_group.ssh_cluster.id]
      instance_types = ["t2.micro"]
    }
  }

  enable_cluster_creator_admin_permissions = true

  # tags = {
  #     Environment = "dev"
  #     Terraform   = "true"
  # }
}