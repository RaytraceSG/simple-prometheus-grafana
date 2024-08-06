variable "s3bucketname" {
  description = "The name of the S3 bucket created"
  type        = string
  default     = "azmi120240806"
}

variable "env" {
  description = "The env of the S3 bucket"
  type        = string
  default     = "dev"
}

variable "department" {
  description = "The Department of the S3 bucket owner"
  type        = string
  default     = "DevOps"
}

variable "vpc_name" {
  description = "The VPC Name to use"
  type        = string
  default     = "azmi1-tf-vpc"
}

variable "subnet_name" {
  description = "The Subnet Name to use"
  type        = string
  default     = "azmi1-tf-public-subnet-az1"
}

variable "sg_name" {
  description = "The SG Name to create SG with"
  type        = string
  default     = "azmi1-tf-sg-allow-ssh-http-https"
}

variable "sg_name2" {
  description = "The SG Name to create SG with"
  type        = string
  default     = "azmi1-tf-sg-allow-prometheus-grafana"
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0ba9883b710b05ac6"
}

variable "ec2_name" {
  description = "Name of EC2"
  type        = string
  default     = "azmi1-ec2-prometheus-grafana-do-not-delete" # Replace with your preferred EC2 Instance Name 
}

variable "instance_type" {
  description = "EC2 Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of EC2 Key Pair"
  type        = string
  default     = "azmi1-tf-keypair" # Replace with your own key pair name (without .pem extension) that you have downloaded from AWS console previously
}