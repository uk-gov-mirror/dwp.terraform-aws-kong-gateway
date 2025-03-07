variable "region" {
  description = "The name of an AWS region"
  type        = string
}

variable "key_name" {
  description = "The name of an AWS ssh key pari to associate with the instances in the ASG"
  type        = string
  default     = null
}

variable "kong_database_password" {
  description = "The password to use for the kong database"
  type        = string
}

variable "environment" {
  description = "Resource environment tag (i.e. dev, stage, prod)"
  type        = string
  default     = "test"
}

variable "service" {
  description = "Resource service tag"
  type        = string
  default     = "kong"
}

variable "description" {
  description = "Resource description tag"
  type        = string
  default     = "Kong API Gateway"
}

variable "ee_bintray_auth" {
  description = "enterprise repo creds"
  type        = string
  default     = "placeholder"
}

variable "ee_license" {
  description = "kong enterprise license"
  type        = string
  default     = "placeholder"
}

variable "vpc_cidr_block" {
  description = "VPC cidr range"
  type        = string
}

variable "asg_desired_capacity" {
  description = "The size of the autoscaling group"
  type        = string
  default     = 2
}

variable "postgres_master_user" {
  description = "The master user for postgresql"
  type        = string
  default     = "root"
}

variable "kong_database_name" {
  description = "The kong database name"
  type        = string
  default     = "kong"
}

variable "kong_database_user" {
  description = "The database use needed to access kong"
  type        = string
  default     = "kong"
}

variable "tags" {
  default = {
    "Dept" = "Testing",
  }
}

variable "proxy_config" {
  description = "(optional) Configure HTTP, HTTPS, and NO_PROXY"
  type = object({
    http_proxy  = string
    https_proxy = string
    no_proxy    = string
  })
  default = {
    http_proxy  = null
    https_proxy = null
    no_proxy    = null
  }
}
