#Createing a template file
data "template_file" "echo-template" {
  template = "${file("script2.sh")}"

  vars {
    myip = "${data.aws_ip_ranges.ap-southeast-2.cidr_blocks[0]}"
  }
}
