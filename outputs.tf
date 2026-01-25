output "lambda_name" {
  value = aws_lambda_function.hackathon.function_name
}

output "secret_arn" {
  value = aws_secretsmanager_secret.api_keys.arn
}
