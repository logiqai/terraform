variable "node_groups"{
     type = map(object({
        node_group_name=string
        node_role_arn=string
        disk_size=string
        instance_types =list(string)
        desired_size= string
        max_size= string
        min_size=string
        labels = map (string)
    }))

}

variable "eks_cluster_name" {
        type="string"
        default = "ekstest"
}