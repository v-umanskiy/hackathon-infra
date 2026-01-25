output "lambda_name" {
  value = aws_lambda_function.hackathon.function_name
}

output "secret_arn" {
  value = data.aws_secretsmanager_secret.api_keys.arn
}

output "api_base_url" {
  value = "${aws_apigatewayv2_api.http_api.api_endpoint}/${aws_apigatewayv2_stage.default.name}"
}

output "transcribe_url" {
  value = "${aws_apigatewayv2_api.http_api.api_endpoint}/${aws_apigatewayv2_stage.default.name}/transcribe"
}
