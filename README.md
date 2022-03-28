Creating an AWS autoscaling group for EC2 instances using Terraform. 

I have skipped some terraform scripts that would create essential resources such as VPC's, AMI, etc. to stay within the context of the challenge. The.tf's provided is using the assumption that the proper components to run them have also been created i.e. declaring security groups, machine images, VPC, subnets, etc. 

asg.tf would create the auto scaling group.
aspup.tf is an auto scale policy that would scale the instance count up if the alarm is triggered.
aspdown.tf is an auto scale policy that would scale the instance count down.

URLs of resources used: 
1.	Troubleshoot failing health checks for Application Load Balancers (amazon.com)
2.	How to use Multiple load balancer Target Group Support for Amazon ECS to access internal and external service endpoint using the same DNS name | Containers
3.	Elastic Load Balancing and Amazon EC2 Auto Scaling - Amazon EC2 Auto Scaling
4.	Attaching a load balancer to your Auto Scaling group - Amazon EC2 Auto Scaling
5.	Create an AWS Auto Scaling Group with Terraform that scales based on Ubuntu memory utilization | Testable
6.	Terraform - Managing Auto Scaling Groups & Load Balancers (hands-on.cloud)

Github: 
1.	anandg1/Terraform-AWS-ApplicationLoadBalancer: Using Terraform ioc to build an AWS ALB Application load balancer. (github.com)
2.	DhruvinSoni30/Terrafrom-ELB-ASG (github.com)

