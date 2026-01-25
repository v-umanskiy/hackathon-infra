variable "aws_region" {
  type    = string
  default = "eu-central-1"
}

variable "aws_profile" {
  type    = string
  default = "personal"
}

variable "lambda_name" {
  type    = string
  default = "hackathon_lambda"
}

variable "lambda_runtime" {
  type    = string
  default = "python3.10"
}

variable "lambda_handler" {
  type    = string
  default = "lambda_function.lambda_handler"
}

variable "lambda_timeout" {
  type    = number
  default = 90
}

variable "lambda_memory_mb" {
  type    = number
  default = 256
}

variable "warm_schedule_expression" {
  type    = string
  default = "rate(5 minutes)"
}

variable "secret_name" {
  type        = string
  default     = "hackathon/api_keys"
  description = "Secrets Manager name to create/manage (value set manually)."
}

variable "api_stage_name" {
  type    = string
  default = "prod"
}

variable "api_throttle_rate_limit" {
  type    = number
  default = 1
}

variable "api_throttle_burst_limit" {
  type    = number
  default = 2
}
