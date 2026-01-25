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
  default = "app.handler"
}

variable "lambda_timeout" {
  type    = number
  default = 45
}

variable "lambda_memory_mb" {
  type    = number
  default = 256
}

variable "secret_name" {
  type    = string
  default = "hackathon/api_keys"
}
