Creating an AWS autoscaling group for EC2 instances. 

I have skipped some terraform scripts that would create essential resources such as VPC's, AMI, etc. to stay within the context of the challenge. The.tf's provided is using the assumption that the proper components to run them have also been created i.e. declaring security groups, machine images, VPC, subnets, etc. 

asg.tf would create the auto scaling group.
aspup.tf is an auto scale policy that would scale the instance count up if the alarm is triggered.
aspdown.tf is an auto scale policy that would scale the instance count down if the threshold is hit for 600 seconds.


