resource "aws_ec2" "web" {
	  ami_id = "123456789"
	  instance_type = var.instance_type
	  Environment = var.Environment
	  project = var.Project 

	  tags = {
		Name = "My-instance"

		}
}