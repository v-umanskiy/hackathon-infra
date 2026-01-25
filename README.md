# Hackathon Infra

Minimal Terraform setup for a single Lambda in eu-central-1 with a dedicated Secrets Manager secret.

## What it creates
- Lambda function with placeholder zip
- Secrets Manager secret for API keys
- IAM role with logging + secret read access

## Usage
1) `terraform init`
2) `terraform plan`
3) `terraform apply`
4) Set the secret value in AWS (Console or CLI) for the created secret name.

## Notes
- Lambda code is managed elsewhere; update it outside Terraform.
- The placeholder zip can stay as-is; Terraform ignores code changes.
