node_groups ={
       "firstone"= {
        node_group_name = "firstone"
        node_role_arn = "arn:aws:iam::252623115636:role/eks-worker-nodegrp"
        disk_size = "20"
        instance_types = ["r5a.large"]
        desired_size = "2"
        max_size = "2"
        min_size = "2"
        labels = {
         "node"="firstone"
        }
        },
        "secondone"= {
           node_group_name = "secondone"
           node_role_arn   = "arn:aws:iam::252623115636:role/eks-worker-nodegrp"
           disk_size      = "20"
           instance_types = ["c5.2xlarge"]
           desired_size = "2"
           max_size = "2"
           min_size = "2"
           labels = {
         "node"="secondone"
        }
        }
 
}