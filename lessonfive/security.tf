#Security Group so host can be logged into
resource "aws_security_group" "ssh-inbound" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = "${var.VPC}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
