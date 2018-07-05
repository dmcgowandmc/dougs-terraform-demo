#Vars Defined but with no values
variable ACCESS_KEY {}
variable SECRET_KEY {}

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
