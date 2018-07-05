#AWS Standalone instance
resource "aws_instance" "lesson-one" {
  ami = "${lookup(var.AMIS, var.REGION)}"
  instance_type = "t2.micro"
}

