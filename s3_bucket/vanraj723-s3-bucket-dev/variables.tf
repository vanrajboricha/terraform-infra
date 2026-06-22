variable "resource_name" {
  description = "Name of the resource"
  type        = string
  default     = "vanraj723-s3-bucket"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

# S3 variables
variable "s3_versioning" {
  description = "Enable S3 versioning"
  type        = bool
  default     = true
}

variable "s3_encryption" {
  description = "Enable S3 encryption"
  type        = bool
  default     = true
}

# EC2 variables
variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = ""
}

# RDS variables
variable "rds_engine" {
  description = "RDS database engine"
  type        = string
  default     = ""
}

variable "rds_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = ""
}