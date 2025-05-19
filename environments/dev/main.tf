# Developers Group and Policy
module "developers_policy" {
  source             = "../../modules/iam-policy"
  policy_name        = "DevelopersPolicy"
  policy_description = "Policy for Developers group"
  policy_document    = file("policies/developers.json")
  tags               = var.tags
}

module "developers_group" {
  source      = "../../modules/iam-group"
  group_name  = "Developers"
  policy_arns = [module.developers_policy.policy_arn]
  tags        = var.tags
}

# Infrastructure Admins Group and Policy
module "infra_admins_policy" {
  source             = "../../modules/iam-policy"
  policy_name        = "InfraAdminsPolicy"
  policy_description = "Policy for Infrastructure Admins"
  policy_document    = file("policies/infra_admins.json")
  tags               = var.tags
}

module "infra_admins_group" {
  source      = "../../modules/iam-group"
  group_name  = "InfrastructureAdmins"
  policy_arns = [module.infra_admins_policy.policy_arn]
  tags        = var.tags
}

# Internal Audit Group and Policy
module "internal_audit_policy" {
  source             = "../../modules/iam-policy"
  policy_name        = "InternalAuditPolicy"
  policy_description = "Policy for Internal Audit"
  policy_document    = file("policies/internal_audit.json")
  tags               = var.tags
}

module "internal_audit_group" {
  source      = "../../modules/iam-group"
  group_name  = "InternalAudit"
  policy_arns = [module.internal_audit_policy.policy_arn]
  tags        = var.tags
}
