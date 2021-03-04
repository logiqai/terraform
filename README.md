# Terraform

Terraform is an open-source infrastructure as code software tool created by HashiCorp. Users define and provision data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language, or optionally JSON.

How to Install:
- Navigate to https://www.terraform.io/downloads.html
- Follow tutorial for MacOS & Ubuntu https://learn.hashicorp.com/tutorials/terraform/install-cli 


This is a sample code to demonstrate use of Terraform to spin up EKS cluster on AWS.

Steps: 
- Clone the repository
- navigate to the folder where the main.tf is placed
- Run terraform init for provider aws resource intiliasation.
- Run terraform plan, you should see a subnet returned.
- Run terraform apply
