resource "aws_autoscaling_policy" "web_policy_down" {
  name = "web_policy_down"
  scaling_adjustment = -1
  adjustment_type = "ChangeInCapacity"
  cooldown = 600
  autoscaling_group_name = aws_autoscaling_group.web.name
}

resource "aws_cloudwatch_metric_alarm" "web_cpu_alarm_down" {
  alarm_name = "web_cpu_alarm_down"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods = "2"
  namespace = "AWS/EC2"
  metric_name = "CPUUtilization"
  period = "120"
  statistic = "Average"
  threshold = "5"
  
  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.web.name
  }
  
  alarm_description = "This metric measures the Coalfire Client EC2 instances CPU Utilization"
  alarm_actions = [ aws_autoscaling_policy.web_policy_down.arn]
}
  
