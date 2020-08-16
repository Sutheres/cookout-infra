variable "region" {
  type = string
  description = "AWS region used for all resources"
  default     = "us-west-2"
}

variable "prefix" {
  type        = string
  description = "Prefix added to names of all resources"
  default     = "dev"
}

variable "instance_type" {
  type        = string
  description = "Instance type used for all EC2 instances"
  default     = "t3a.medium"
}