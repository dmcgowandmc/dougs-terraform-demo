#AWS Standalone instance
resource "aws_instance" "lesson-one" {
  ami = "ami-39f8215b"
  instance_type = "t2.micro"
}

