# dep-teh-mgm
Repository to deploy mteh Managements Group 

## Description
This repository contains the necessary scripts and configurations to deploy and manage the mprod Managements Group. It includes infrastructure as code (IaC) templates, deployment scripts, and configuration files.

## Features
- Enables customized deployment of mprod depicting organizational structure of the bank
- Allows further parameterization and modifications, adding new Management Groups if needed
- Can later be used for creating, assigning, and enforcing Azure policies

## Getting Started
To get started with deploying the mprod Managements Group, follow these steps:

1. Clone the repository:
    ```sh
    git clone https://github.com/az-lz-20-mb/dep-teh-mgm
    cd dep-teh-mgm
    ```
2. Edit the parameters in terraform.tfvars
    e.g. landing_zones paramterer is responsible for declarative definition of Org structure and can be modified if needed. 

## License
This project is licensed by Accenture Poland sp. z o.o.
