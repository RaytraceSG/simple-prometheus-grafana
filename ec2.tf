module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name                   = var.ec2_name
  ami                    = data.aws_ami.aws_ami_data.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.azmi1-tf-sg-allow-ssh-http-https.id, aws_security_group.azmi1-tf-sg-allow-prometheus-grafana.id]
  subnet_id              = module.vpc.public_subnets[0]
  associate_public_ip_address = true
  user_data = "${file("init-prometheus.sh")}"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

output "public_ip" {
  value = module.ec2_instance.public_ip
}