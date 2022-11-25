## Table of Contents
  - [Globe](#globe)
  - [Features](#features)
  - [Prerequisites](#prerequisites)
  - [Running the Module](#running-the-module)

# Globe

[![Terraform](https://github.com/prashantsolanki3/globe/actions/workflows/terraform.yaml/badge.svg)](https://github.com/prashantsolanki3/globe/actions/workflows/terraform.yaml)

Deploy Docker and Cloudflare Resources

## Features
- TODO: Github Actions
- TODO: Create subdomains
- TODO: Start a tunnel

## Prerequisites

- Terraform cloud account [Sign Up](https://app.terraform.io/)
- Create variables in your Terraform Workspace.
  
  - `cloudflare_api_token`
    
    Set your cloudflare API token

- Create `terraform.tfvars` file to store your infra config.
  
  ```
  nano terraform.tfvars
  ```

- Check variables.tf, read the descriptions and add the required variables to config.tfvars. The config.tfvars file should look something like this:

  ```
  enable_docker             = true
  enable_cloudflare         = true
  .
  .
  .
  # Other Variables
  ```

## Running the Module

- (First Run) Login to Terraform Cloud
  ```
  terraform login
  ```

- Initialise the Project: Installs the required dependencies.
  ```
  terraform init
  ```

- Plan the deployment
  ```
  terraform plan 
  ```

- Apply the changes
  
  NOTE: Running this command would create your Infrastructure on docker and cloudflare.
  ```
  terraform apply
  ```

- Destroy the Infrastructure

  NOTE: Running this command would destroy your Infrastructure on docker and cloudflare.
  ```
  terraform destroy
  ```
