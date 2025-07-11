provider "aws" {
  region = "us-east-1"
}
module "ec2_instances" {
  source          = "./modules/EC2"
  ami_id          = "ami-020cba7c55df1f615" # Ubuntu Server 24.04 LTS
  instance_count  = 3
  instance_name   = "webserver"
  instance_type   = "t3.micro"
  subnet_id       = "subnet-06f26f06586ba7b1f"
}
output "instance_ids" {
  value = module.ec2_instances.instance_ids
}
output "public_ips" {
  value = module.ec2_instances.public_ips
}

module "s3" {
  source = "./modules/S3"
  
  bucket_name = "phiva1985-s3-bucket-test-${random_string.suffix.result}"
}