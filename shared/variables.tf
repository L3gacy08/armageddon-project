variable "regions" {
  type    = list(string)
  default = ["ap-northeast-1", "us-east-1", "eu-west-2", "sa-east-1", "ap-southeast-2", "us-west-1", "ap-east-1"]
}

variable "vpc_cidrs" {
  type = map(string)
  default = {
    "ap-northeast-1" = "10.140.0.0/16"
    "us-east-1"      = "10.140.0.0/16"
    "eu-west-2"      = "10.140.0.0/16"
    "sa-east-1"      = "10.140.0.0/16"
    "ap-southeast-2" = "10.140.0.0/16"
    "us-west-1"      = "10.140.0.0/16"
    "ap-east-1"      = "10.140.0.0/16"
  }
}

variable "public_subnets" {
  type = map(list(string))
  default = {
    "ap-northeast-1" = ["10.140.1.0/24", "10.140.2.0/24"]
    "us-east-1"      = ["10.140.3.0/24", "10.140.4.0/24"]
    "eu-west-2"      = ["10.140.5.0/24", "10.140.6.0/24"]
    "sa-east-1"      = ["10.140.7.0/24", "10.140.8.0/24"]
    "ap-southeast-2" = ["10.140.9.0/24", "10.140.10.0/24"]
    "us-west-1"      = ["10.140.13.0/24", "10.140.14.0/24"]
    "ap-east-1"      = ["10.140.11.0/24", "10.140.12.0/24"]
  }
}

variable "private_subnets" {
  type = map(list(string))
  default = {
    "ap-northeast-1" = ["10.140.10.0/24", "10.140.20.0/24"]
    "us-east-1"      = ["10.140.30.0/24", "10.140.40.0/24"]
    "eu-west-2"      = ["10.140.50.0/24", "10.140.60.0/24"]
    "sa-east-1"      = ["10.140.70.0/24", "10.140.80.0/24"]
    "ap-southeast-2" = ["10.140.90.0/24", "10.140.100.0/24"]
    "us-west-1"      = ["10.140.130.0/24", "10.140.140.0/24"]
    "ap-east-1"      = ["10.140.110.0/24", "10.140.120.0/24"]
  }
}






variable "default_ami_id" {
  description = "Default AMI ID for EC2 instances"
  type        = string
  default     = "ami-12345678" # Replace with the correct AMI ID
}

variable "default_instance_type" {
  description = "Default instance type for EC2"
  type        = string
  default     = "t3.micro"
}
