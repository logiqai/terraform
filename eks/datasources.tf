data "aws_vpc" "default"{
    default = true
}


data "aws_availability_zones" "available" {
  
}

 data "aws_subnet" "subnet" {
    availability_zone=data.aws_availability_zones.available.names[0]
 }

data "aws_subnet_ids" "all"{
    vpc_id = data.aws_vpc.default.id
    
    
}


data "aws_iam_role" "iam"{
    name = "eksclusterrole"
}
data "aws_iam_role" "worker-iam"{
    name="eks-worker-nodegrp"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}