variable "cluster_name" {}
variable "key_pair" {}
variable "instance_types" {}
variable "node_group_name" {}
variable "public_access_cidrs" {}
variable "tags" {}
variable "vpc_cidr" {}
variable "instance_tenancy" {}
variable "public_sn_count" {}
variable "public_cidrs" {
  type = list(any)
}
variable "rt_route_cidr_block" {}
variable "access_ip" {}
variable "scaling_desired_size" {}
variable "scaling_max_size" {}
variable "scaling_min_size" {}
variable "map_public_ip_on_launch" {}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance"
}

variable "ami_id" {
  description = "The AMI to be used for the bastion host"
}

#ecr variables

variable "enable_ecr" {
  description = "This variable will decide whether the elastic container registries are created or not for the environment"
  type        = bool
}

variable "enable_lifecycle_policy" {
  type        = bool
  description = "Set to false to prevent the module from adding any lifecycle policies to any repositories"
}

variable "ecr_repo_names" {
  type        = list(string)
  description = "List of Docker local image names, used as repository names for AWS ECR "
}

variable "image_tag_mutability" {
  type        = string
  description = "The tag mutability setting for the repository. Must be one of: `MUTABLE` or `IMMUTABLE`"
}