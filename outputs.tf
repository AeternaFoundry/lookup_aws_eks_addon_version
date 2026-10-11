output "eks_addon_version_lookup_id" {
  description = "Map of id values across all eks_addon_version_lookup, keyed the same as var.eks_addon_version_lookup"
  value       = { for k, v in data.aws_eks_addon_version.eks_addon_version_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eks_addon_version_lookup_addon_name" {
  description = "Map of addon_name values across all eks_addon_version_lookup, keyed the same as var.eks_addon_version_lookup"
  value       = { for k, v in data.aws_eks_addon_version.eks_addon_version_lookup : k => v.addon_name if v.addon_name != null && length(v.addon_name) > 0 }
}
output "eks_addon_version_lookup_kubernetes_version" {
  description = "Map of kubernetes_version values across all eks_addon_version_lookup, keyed the same as var.eks_addon_version_lookup"
  value       = { for k, v in data.aws_eks_addon_version.eks_addon_version_lookup : k => v.kubernetes_version if v.kubernetes_version != null && length(v.kubernetes_version) > 0 }
}
output "eks_addon_version_lookup_most_recent" {
  description = "Map of most_recent values across all eks_addon_version_lookup, keyed the same as var.eks_addon_version_lookup"
  value       = { for k, v in data.aws_eks_addon_version.eks_addon_version_lookup : k => v.most_recent if v.most_recent != null }
}
output "eks_addon_version_lookup_region" {
  description = "Map of region values across all eks_addon_version_lookup, keyed the same as var.eks_addon_version_lookup"
  value       = { for k, v in data.aws_eks_addon_version.eks_addon_version_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "eks_addon_version_lookup_version" {
  description = "Map of version values across all eks_addon_version_lookup, keyed the same as var.eks_addon_version_lookup"
  value       = { for k, v in data.aws_eks_addon_version.eks_addon_version_lookup : k => v.version if v.version != null && length(v.version) > 0 }
}

