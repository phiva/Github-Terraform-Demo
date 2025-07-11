provider "aws" {
  region = "us-east-1"
}
module "ec2_instances" {
  source          = "./modules/EC2"
  ami_id          = "ami-07041441b708acbd6" # Ubuntu Server 24.04 LTS
  instance_count  = 3
  instance_name   = "webserver"
  instance_type   = "t3.micro"
}
output "instance_ids" {
  value = module.ec2_instances.instance_ids
}
output "public_ips" {
  value = module.ec2_instances.public_ips
}

module "s3" {
  source = "./modules/S3"
  bucket_name = "phiva1985-s3-bucket-test"
}
