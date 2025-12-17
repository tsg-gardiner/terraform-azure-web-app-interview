
# Azure Terraform Coding Question for Interview

# Scenario:
# You need to provision infrastructure on Azure for a web application. The setup includes:

# A Virtual Network (VNet) with a public subnet
# A Linux VM in the public subnet running an Apache web server
# A Network Security Group (NSG) allowing HTTP (80) and SSH (22) access
# A Storage Account with blob container for storing application logs
# A Managed Identity allowing the VM to write logs to the storage account
# Requirements:


# Best Practices:
# Use variables for configurable parameters
# Use Terraform modules where appropriate
# Tag all resources with Environment = "Interview"



# Networking 

# Virtual Network:
# Address space: 10.0.0.0/16
# Public subnet: 10.0.1.0/24 

# TODO Create Vnet and subnet module in network module folder using Azure verified modules as best practice
# TODO Variable defition of map object of vnet(s) and nested map object of subnets 

# Network Security Group:
# Allow HTTP (port 80) from 0.0.0.0/0
# Allow SSH (port 22) from your IP only (use a variable)

# TODO add optional NSG creation to network module 



# VM 

# Linux VM:
# Use Ubuntu 20.04 LTS image
# VM size: Standard_B1s
# Public IP enabled
# Install Apache via cloud-init (include a simple Hello, World! homepage)


# Storage Account 

# Storage Account:
# Create a storage account with globally unique name
# Create a blob container named "logs"
# Enable blob versioning


# RBAC 

# Managed Identity:
# Assign a system-assigned identity to the VM
# Grant "Storage Blob Data Contributor" role to the VM identity

# TODO Create identity 



# Outputs:
# Public IP of the VM
# Storage account name


# Tags block 

# Tag all resources with Environment = "Interview"
