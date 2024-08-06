module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "azmi1-vpc-tf-module"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
  
  
  tags = {
    Terraform = "true"
    Environment = "dev"
    Created_by = "Azmi"
    Cohort = "CE7"
  }
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_arn" {
  value = module.vpc.vpc_arn
}