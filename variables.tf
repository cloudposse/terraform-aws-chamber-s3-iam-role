variable "namespace" {
  type        = "string"
  description = "Namespace (e.g. `cp` or `cloudposse`)"
}

variable "stage" {
  type        = "string"
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "name" {
  type        = "string"
  description = "Name (e.g. `app` or `chamber`)"
}

variable "s3_bucket_arn" {
  type        = "string"
  description = "ARN of S3 bucket"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = "list"
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}

variable "region" {
  type        = "string"
  description = "AWS Region"
}

variable "account_id" {
  type        = "string"
  description = "AWS account ID"
}

variable "kms_key_arn" {
  description = "ARN of the KMS key which will encrypt/decrypt SSM secret strings"
}

variable "assume_role_arns" {
  type        = "list"
  description = "List of ARNs to allow assuming the role. Could be AWS services or accounts, Kops nodes, IAM users or groups"
}

variable "services" {
  type        = "list"
  description = "Names of chamber services"
}

variable "max_session_duration" {
  default     = 3600
  description = "The maximum session duration (in seconds) for the role. Can have a value from 1 hour to 12 hours"
}

variable "read_only" {
  type        = "string"
  default     = "false"
  description = "Set to `true` to deny write actions for bucket"
}

variable "enabled" {
  type        = "string"
  description = "Set to `false` to prevent the module from creating any resources"
  default     = "true"
}