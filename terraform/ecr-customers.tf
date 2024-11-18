module "ecr_customers" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "1.6.0"

  repository_name                   = "customers"
  repository_type                   = "private"
  create_lifecycle_policy           = false
  repository_force_delete           = false
  repository_read_access_arns       = []
  repository_read_write_access_arns = []
}

output "repository_arn_customers" {
  description = "Full ARN of the repository"
  value       = module.ecr_customers.repository_arn
}

output "repository_registry_id_customers" {
  description = "The registry ID where the repository was created"
  value       = module.ecr_customers.repository_registry_id
}

output "repository_url_customers" {
  description = "The URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`)"
  value       = module.ecr_customers.repository_url
}
