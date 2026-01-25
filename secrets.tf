data "aws_secretsmanager_secret" "api_keys" {
  name = var.secret_id
}
