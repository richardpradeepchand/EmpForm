**Objective**
Deploy a Docker container running a sample web application on the configured EC2 instance.

**Overview**
A Dockerfile is used to containerize a basic HTML and CSS web form application. The image is built locally or remotely on the EC2 instance and then deployed as a running container. The application is accessible through the EC2 public IP on port 80.

**Files**
Dockerfile – Defines the container image for the web application
app folder – Contains the HTML and CSS files for the form application
deploy.sh – Bash script or Ansible task to automate container build and deployment

**Commands**
 cd /mnt/c/EmpApplication/docker-deploy
 ansible-playbook -i ../ansible/inventory.ini deploy-container.yml


**Execution Steps**

Build the Docker image using docker build -t form-app .
Run the container using docker run -d -p 80:80 form-app
Access the web application from a browser using the EC2 instance public IP
Verify container status using docker ps

**Deliverables**
Dockerfile and sample application files
Screenshot of running Docker container
Screenshot of the web application in a browser