# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "rezume_log_group" {
  name              = "/ecs/rezume-app"
  retention_in_days = 30

  tags = {
    Name = "rezume-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "rezume_log_stream" {
  name           = "rezume-log-stream"
  log_group_name = aws_cloudwatch_log_group.rezume_log_group.name
}

