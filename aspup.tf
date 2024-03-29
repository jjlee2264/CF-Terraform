resource "aws_autoscaling_policy" "web_policy_up" {
  name = "web_policy_up"
  scaling_adjustment = 1
  adjustment_type = "ChangeInCapacity"
  cooldown = 600
  autoscaling_group_name = aws_autoscaling_group.web.name
}

resource "aws_cloudwatch_metric_alarm" "web_cpu_alarm_up" {
  alarm_name = "web_cpu_alarm_up"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods = "2"
  metric_name = "AWS/EC2"
  period = "120"
  statistic = "Average"
  threshold = "95"
  
  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.web.name
  }
  
  alarm_description = "This metric measures the Coalfire Client instances CPU Utilization"
  alarm_actions = [ aws_autoscaling_policy.web_policy_ip.arn]
}
  
