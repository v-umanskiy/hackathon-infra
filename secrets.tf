resource "aws_secretsmanager_secret" "api_keys" {
  name = var.secret_name

  lifecycle {
    prevent_destroy = true
  }
}
