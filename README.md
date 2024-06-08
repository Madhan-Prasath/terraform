# Terraform Proxmox Container Deployment

Automate the deployment of containers in Proxmox using Terraform for efficient and streamlined management.
## Table of Contents

- [Introduction and Features](#introduction-and-features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)

## Introduction and Features

The Terraform Proxmox Container Deployment project simplifies and accelerates the process of deploying containers in Proxmox through the power of Terraform. This project offers the following key features:

- **Automated Container Management:** Easily create and manage containers with automation, reducing manual intervention.
- **Infrastructure as Code (IaC):** Leverage the Terraform IaC approach to define your container infrastructure in code, enhancing reproducibility and maintainability.
- **Efficient Provisioning:** Streamline the provisioning of containers on the Proxmox platform, ensuring rapid and consistent deployments.
## Prerequisites

Before you begin, ensure you have the following prerequisites in place:

- A functioning Proxmox server that is accessible.
- Terraform installed on your local machine. If not already installed, consult the [Terraform Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli) for comprehensive instructions.

## Installation

To install terraform in your ubuntu system, run the following command
```sh
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

To deploy containers using Terraform, follow these simple steps:

**Clone the Repository:** Begin by cloning this repository to your machine using the command:
```shell
git clone ssh://git@git.bitsathy.ac.in:2222/DevOps/terraform.git
```
**Navigate to Project Directory:** Move into the project directory using: `cd proxmox-terraform-containers`

**Copy main.tf.example:** Copy the `main.tf.example` file to `main.tf` using the command:
```shell
cp main.tf.example main.tf
```
**Configure Container Settings:** Open the `main.tf` file and adjust the configurations to match your requirements. Customize settings such as container specifications, resource allocation, and networking.

## Usage

**Initialize Terraform:** Run `terraform init` to initialize the Terraform configuration, preparing it for deployment.

**Plan Terraform:** Run `terraform plan` to preview the Terraform deployment plan. This will display the actions that Terraform will take when you run `terraform apply`.

**Apply Terraform:** Run `terraform apply` to deploy the containers on Proxmox. This will create the containers on the Proxmox server.

## Configuration
Customize the configurations in the main.tf file according to your container deployment requirements.
------------------------------------------------------------------------------------------------