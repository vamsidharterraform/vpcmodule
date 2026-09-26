locals {
  common_tags = {
    Environment = "dev"
    Project     = var.cluster_name
    ManagedBy   = "Terraform"
    Terraform   = "true"

    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "karpenter.sh/discovery"                    = var.cluster_name
  }
}