# Terro_VPC_Web_SSH_Ubuntu

# 1. Create vpc -- 10.10.0.0/16 -- Project_Vpc
# 2. Create Internet Gateway -- Project_GW
# 3. Create Custom Route Table -- Project_RT  .. accept all .. 0.0.0.0/.
# 4. Create a Subnet -- 10.10.2.0/24 .. Project_Subnet .. AZ - "us-east-1a"
# 5. Associate subnet with Route Table
# 6. Create Security Group to allow port 22, -- ingress=443,80,22; egress=anything
# 7. Create a network interface with an ip in the subnet that was created in step 4 -- 10.10.1.50,10.10.1.51
# 8. Assign an elastic IP to the network interface created in step 7 -- 10.10.1.50
    (EIP depends on Internet Gateway.. so we need to use depends on for EIP)
# 9. Create Ubuntu server and install/enable apache2
###################################################################################################
1.create a workspace in Terraform and link Project in GIT HUB
2. add AWS_ACCESS_KEY_ID & AWS_SECRET_ACCESS_KEY to environment variables and provide the value for those variables and click on sensitive.
3. change code / Infra in .tf files and commit / push and wait Terraform to kick in the Plan and apply.
