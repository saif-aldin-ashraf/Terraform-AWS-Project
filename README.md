# Terraform-AWS-Project 
 
# 🚀 AWS VPC Infra with Public & Private Load Balancers via Terraform

This project builds a **secure and scalable VPC infrastructure on AWS** using **Terraform**, complete with public/private subnets, EC2 proxy & backend instances, and load balancers. It provisions the entire setup across two AZs and uses **remote state storage in S3**, dynamic AMI fetching, and provisioning via `remote-exec`.

## 📸 Architecture Diagram
![Architecture Diagram](screenshots/diagram.png)

---

## 📦 Features

- 🔹 Custom Terraform modules
- 🔹 Remote backend with S3 + DynamoDB for state locking
- 🔹 Workspace isolation (`dev`)
- 🔹 Public and private EC2 instances (proxy/backend)
- 🔹 Apache installed on proxy servers using `remote-exec`
- 🔹 Private EC2 instances exposed through a private ALB
- 🔹 Output of public IPs to `all-ips.txt`
- 🔹 Image IDs fetched dynamically with `data "aws_ami"`
- 🔹 Cool output when you hit the Public Load Balancer → shows content from Private EC2s!

---

## ✅ Requirements

- [Terraform v1.0+](https://www.terraform.io/downloads)
- AWS CLI configured
- An S3 bucket + DynamoDB table for remote state
- A key pair for SSH access to EC2s
- Git

---

