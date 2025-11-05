**Objective**
Automate the setup of cloud infrastructure using Terraform to host a web application on an AWS EC2 instance.

**Overview**
This part provisions the required cloud infrastructure resources such as a Virtual Private Cloud, Subnet, Security Group, and EC2 instance using Infrastructure as Code principles. Terraform scripts define and automate this process to ensure consistency and scalability.

**Files**
main.tf – Contains the main Terraform configuration for the infrastructure
variables.tf – Defines all configurable variables
outputs.tf – Displays key outputs such as instance public IP and ID
terraform.tfvars – Provides values for variables like region and key pair name

**Execution Steps**

Initialize Terraform using terraform init
Validate configuration using terraform validate
Apply the configuration using terraform apply -auto-approve

**Commands**
terraform init
terraform plan
terraform apply

After successful execution, the EC2 instance will be created and accessible through the public IP provided in the output

**Deliverables**
Terraform configuration files
Architecture diagram showing the deployed AWS resources
Screenshot of successful deployment and running instance

**Cleanup**
To remove all infrastructure resources, run terraform destroy -auto-approve