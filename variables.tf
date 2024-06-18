variable "aws_region" {
  description = "This describe the region"
  type        = string
  default = "us-east-1"

}
variable "ecr_repo" {
  description = "This defines the repository"
  type        = string
  default = "springapp1-cluster-repo"
  

}
variable "aws_eks_cluster" {
  description = "This defines the eks cluster"
  type        = string
  default = "springapp1-cluster"
  

}
variable "aws_eks_node_group" {
  description = "This defines the eks cluster"
  type        = string
  default     = "springapp1-node-grp"

}



