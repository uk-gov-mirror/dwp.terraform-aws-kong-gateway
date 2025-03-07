output "asg_outputs" {
  value = aws_autoscaling_group.kong
  description = "Full `aws_autoscaling_group` resource details for the autoscaling group created for Kong."
  sensitive = false
}

output "private_subnet_azs" {
  value = local.azs
  description = "List of availability zones used for the private subnets, either supplied in the optional `supplied in the optional `private_subnets` input variable or created in `subnets` submodule` input variable or defined in `subnets` submodule."
  sensitive = false
}

output "private_subnet_ids" {
  value = local.private_subnets
  description = "List of private subnet IDs. These are either supplied in the optional `private_subnets` input variable or created in `subnets` submodule."
  sensitive = false
}
