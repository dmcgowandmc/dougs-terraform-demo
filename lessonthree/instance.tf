#Create a Keypair for eventual use in the AMI
resource "aws_key_pair" "terraform-key" {
  key_name = "terraform-key"
  public_key = "${var.ID_RSA_PUB}"
}

#AWS Standalone instance
resource "aws_instance" "lesson-one" {
  ami = "${lookup(var.AMIS, var.REGION)}"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.terraform-key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.ssh-inbound.id}"]

  #Provisioner - Send File
  provisioner "file" {
    source = "script.sh"
    destination = "/home/ec2-user/script.sh"
  }

  #Provisioner - Run File
  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/ec2-user/script.sh",
      "/home/ec2-user/script.sh"
    ]
  }

  #Connection for provisioner
  connection {
    user = "ec2-user"
    private_key = "${file("${var.ID_RSA}")}"
  }
}
