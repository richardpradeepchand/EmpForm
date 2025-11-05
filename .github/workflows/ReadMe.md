**Objective**
Implement an automated CI/CD pipeline that builds and deploys the Docker container to the EC2 instance whenever new code is pushed to the repository.

**Overview**
A CI/CD pipeline using Azure DevOps or GitHub Actions automates the build, test, and deployment process. Whenever code is updated in the repository, the pipeline triggers automatically, builds the Docker image, and deploys it to the server using SSH.

**Files**
.github/workflows/deploy.yml – GitHub Actions workflow file defining build and deploy stages
azure-pipelines.yml – Alternative configuration for Azure DevOps (if used)

**Pipeline Stages**
Checkout the latest code from the repository
Build the Docker image
Push the image to the EC2 instance
Run the container automatically on deployment

**Deliverables**
CI/CD pipeline configuration file
Screenshot or log of successful build and deployment
Demonstration showing automated deployment after code push