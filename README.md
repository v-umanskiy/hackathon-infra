# Hackathon Infra

Minimal Terraform setup for a single Lambda in eu-central-1 with a dedicated Secrets Manager secret and an HTTP API Gateway.

## What it creates
- Lambda function with placeholder zip
- IAM role with logging + secret read access
- API Gateway HTTP API with basic throttling
- EventBridge scheduled warm-up rule

## Usage
1) `terraform init`
2) `terraform plan`
3) `terraform apply`

## Notes
- Lambda code is managed elsewhere; update it outside Terraform.
- The placeholder zip can stay as-is; Terraform ignores code changes.
- API throttling is overall per stage (not per-IP). Adjust `api_throttle_rate_limit`/`api_throttle_burst_limit` if needed.
- Warm-up schedule defaults to `rate(5 minutes)` via `warm_schedule_expression`.
- Terraform creates the secret resource, but you set/rotate the secret value manually in AWS.
