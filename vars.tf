variable "region" {
  description = "The AWS region to deploy in."
  type        = string
}

variable "frontend_aws_access_key_id" {
  description = "front end account configuration"
  type        = string
  sensitive   = true
}

variable "frontend_aws_secret_access_key" {
  description = "front end account configuration"
  type        = string
  sensitive   = true
}

variable "aws_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default     = {
    application = "serverless-image-processor"
    env = "aws_frontend"
  }
}