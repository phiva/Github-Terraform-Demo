variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}
variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
}
variable "subnet_id" {
  description = "The subnet ID where the instance will be created"
  type        = string
}
