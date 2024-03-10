provider "aws" {
  profile = "default"
  region  = var.REGION
}

# data "aws_eks_cluster" "default" {
#   name = var.CLUSTER_NAME
# }

# data "aws_eks_cluster_auth" "default" {
#   name = var.CLUSTER_NAME
# }

# provider "kubernetes" {
#   host                   = data.aws_eks_cluster.default.endpoint
#   cluster_ca_certificate = base64decode(data.aws_eks_cluster.default.certificate_authority[0].data)
#   token                  = data.aws_eks_cluster_auth.default.token
# }
