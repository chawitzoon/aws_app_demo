[![Python application test with Github Actions](https://github.com/chawitzoon/aws_app_demo/actions/workflows/main.yml/badge.svg)](https://github.com/chawitzoon/aws_app_demo/actions/workflows/main.yml)

# aws_app_demo


# Fast API for Amazon Stock prediction endpoint
(Obsoleted Project, moved to to utlize Docker Hub and Azure App Service instead TBD) 

This is planned to be integrated with [main repository](https://github.com/chawitzoon/dash-app-ml-devops/tree/main) 

## Overview of ReadME
1. Introduction
2. Project overview
3. Project components
4. Future Work

## Introduction

This project demonstrate the CI/CD using AWS services. The detail are as follows:
1. Source Code Management (SCM): The source code is managed in this GitHub repository.

2. Continuous Integration (CI):

When changes are made to the main branch, GitHub Actions workflow is triggered.
The workflow checks out code (lint, test, etc), builds a Docker image using your Dockerfile.

3. Container Registry:

The built Docker image is then pushed to a container registry. In this example, Amazon Elastic Container Registry (ECR) is used.
The container registry stores and manages the Docker images, making them available for deployment.

4. Continuous Deployment (CD):

The workflow can then pull the Docker image from the Amazon Elastic Container Registry (ECR) and deploy it to the target environment (AWS ECS, Google Kubernetes Engine, etc.).
By using a container registry, it is ensured that your Docker images are versioned, stored securely, and can be easily accessed for deployment.


This project uses CI and CD through GitHub Actions. CI is done by Make Install and Make Lint which automatically ensures the updated code has no errors. Once it successfully passses the Make Install and Make Lint phase, CD takes place where it automatically builds the new Docker Container (Image) and pushes it to Amazon Elastic Container Registry (ECR).

## Project overview

<img width="1792" alt="aws_project_outline" src="ml_devops\aws_app_demo\image_readme\aws_project_outline.png">


AWS Cloud Services Used:
1. Amazon Elastic Container Registry (ECR)
2. AWS App Runner

Technologies Used:
1. Github and Github Actions
2. Docker and DockerHub
3. FastAPI
4. Torch and Scikit-learn

## Project components
TBD

## Future Work

Switch to Azure service and integrated to Flask app
Add decision making part by using Reinforcement learning and algorithmic trading