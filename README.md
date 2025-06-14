# Terraform-AWS-Project 
 
# 🚀 AWS VPC Infra with Public & Private Load Balancers via Terraform

This project builds a **secure and scalable VPC infrastructure on AWS** using **Terraform**, complete with public/private subnets, EC2 proxy & backend instances, and load balancers. It provisions the entire setup across two AZs and uses **remote state storage in S3**, dynamic AMI fetching, and provisioning via `remote-exec`.

## 📸 Architecture Diagram
![image](https://github.com/user-attachments/assets/13602a20-738d-42bb-94fc-5429dc14123b)


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

## 📁 Project Structure
![image](https://github.com/user-attachments/assets/575b8b60-7436-4707-a2e1-9f44785b9fb6)


𝗜𝗻𝗶𝘁𝗶𝗮𝗹𝗶𝘇𝗲 𝗧𝗲𝗿𝗿𝗮𝗳𝗼𝗿𝗺 & 𝗖𝗿𝗲𝗮𝘁𝗲 𝗪𝗼𝗿𝗸𝘀𝗽𝗮𝗰𝗲:

terraform init
terraform plan
terraform workspace new dev
terraform apply

🌐 Result Preview
🧠 Dev Workspace
🔧 Proxy Apache Setup
🌍 Public DNS Load Balancer Output
☁️ S3 State File Storage
