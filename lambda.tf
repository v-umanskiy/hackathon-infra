resource "aws_lambda_function" "hackathon" {
  function_name = var.lambda_name

  runtime = var.lambda_runtime
  handler = var.lambda_handler
  role    = aws_iam_role.lambda.arn

  timeout     = var.lambda_timeout
  memory_size = var.lambda_memory_mb

  filename = "${path.module}/lambda_placeholder.zip"

  environment {
    variables = {
      SECRETS_ARN = data.aws_secretsmanager_secret.api_keys.arn
    }
  }

  lifecycle {
    ignore_changes = [
      environment,
      filename,
      source_code_hash,
      s3_bucket,
      s3_key,
      s3_object_version,
      image_uri,
    ]
  }
}
