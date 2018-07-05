#Var Defined but with a default value
variable REGION {
  default = "ap-southeast-2"
}

#Special type of variables which have different values depending on a particular value
variable AMIS {
  type = "map"
  default = {
    ap-southeast-2 = "ami-39f8215b"
    us-east-1 = "ami-33f92051"
  }
}

#Some Needed Bits to fget into host
variable ID_RSA_PUB {}
variable ID_RSA {
  default = "id_rsa"
}
variable VPC {}
