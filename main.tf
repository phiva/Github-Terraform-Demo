provider "aws" {
  region = "us-east-1"
}
module "ec2_instances" {
  source          = "./modules/EC2"
  ami_id          = "ami-007855ac798b5175e" # Amazon Linux 2 AMI
  instance_count  = 3
  instance_name   = "webserver"
  instance_type   = "t2.micro"
}
output "instance_ids" {
  value = module.EC2.instance_ids
}
output "public_ips" {
  value = module.EC2.public_ips
}

module "s3" {
  source = "./modules/S3"
}
