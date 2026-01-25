resource "aws_cloudwatch_event_rule" "lambda_warm" {
  name                = "${var.lambda_name}-warm"
  schedule_expression = var.warm_schedule_expression
  state               = "ENABLED"
}

resource "aws_cloudwatch_event_target" "lambda_warm" {
  rule = aws_cloudwatch_event_rule.lambda_warm.name
  arn  = aws_lambda_function.hackathon.arn
}

resource "aws_lambda_permission" "allow_eventbridge" {
  statement_id  = "AllowEventBridgeInvokeWarm"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.hackathon.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.lambda_warm.arn
}
