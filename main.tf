data "aws_eks_addon_version" "eks_addon_version_lookup" {
  for_each = var.eks_addon_version_lookup

  addon_name         = each.value.addon_name
  kubernetes_version = each.value.kubernetes_version
  most_recent        = each.value.most_recent
  region             = each.value.region
}

