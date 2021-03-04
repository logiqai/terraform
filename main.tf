provider "aws" {
    region = "ap-south-1"
}



resource "aws_eks_cluster" "cluster" {
      name= var.eks_cluster_name 
      role_arn = "arn:aws:iam::252623115636:role/eksclusterrole"
      vpc_config {
        security_group_ids      = []
        subnet_ids = data.aws_subnet_ids.all.ids
  }
}

# Nodes in private subnets
resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.cluster.name
  subnet_ids      = [data.aws_subnet.subnet.id]
  for_each        =  var.node_groups 
  node_group_name = each.value.node_group_name
  node_role_arn   = each.value.node_role_arn
  disk_size       = each.value.disk_size
  instance_types  = each.value.instance_types
  labels          = each.value.labels
scaling_config {
    desired_size = each.value.desired_size
    max_size     = each.value.max_size
    min_size     = each.value.min_size
  }
}


output "subnet" {
  value = data.aws_subnet.subnet.id
}
