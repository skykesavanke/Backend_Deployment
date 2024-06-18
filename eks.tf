
resource "aws_eks_cluster" "example-cluster" {
  name     = var.aws_eks_cluster
  role_arn = "arn:aws:iam::211125415675:role/cluster-role"
  vpc_config {
    subnet_ids = ["subnet-0945d4acc20ad635b", "subnet-0facd519e56b04847"]

  }


}
resource "aws_eks_node_group" "example-group" {
  cluster_name    = aws_eks_cluster.example-cluster.name
  node_group_name = var.aws_eks_node_group
  node_role_arn   = "arn:aws:iam::211125415675:role/my-role-1"
  subnet_ids      = ["subnet-0945d4acc20ad635b", "subnet-0facd519e56b04847"]
 
  
  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
}