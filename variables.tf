variable "eks_addon_version_lookup" {
  description = <<EOT
Map of eks_addon_version_lookup, attributes below
Required:
    - addon_name
    - kubernetes_version
Optional:
    - most_recent
    - region
EOT

  type = map(object({
    addon_name         = string
    kubernetes_version = string
    most_recent        = optional(bool)
    region             = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

