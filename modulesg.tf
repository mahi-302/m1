resource "aws_launch_configuration" "aslc" {
  name_prefix   = var.name_prefix
  image_id      = var.image_id
  instance_type = var.instance_type
  security_groups    = var.security_groups
  user_data = "${file("userdata.sh")}"
  }
resource "aws_autoscaling_group" "bar" {
  name                 = var.name 
  depends_on           = ["aws_launch_configuration.aslc","aws_lb_target_group.test"]
  launch_configuration = aws_launch_configuration.aslc.name
  min_size             = 1
  max_size             = 2
  desired_capacity     = 1
 availability_zones = var.availability_zones
}
