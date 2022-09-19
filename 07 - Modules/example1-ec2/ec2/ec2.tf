
resource "aws_instance" "ec2" {
    ami = data.aws_ami.amzlinux2.id
    instance_type = "var.instance_type"
    tags = {
        Name = var.ec2name
    }
}

output "instance_id" {
    value = aws_instance.ec2.id
}

variable "ec2name" {
	type = string
}
variable "instance_type" {
	type = string
	default = "t2.micro"
}
