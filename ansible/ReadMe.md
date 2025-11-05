Objective
Automate the configuration of the EC2 instance using Ansible to install Docker and set up the environment for application deployment.

Overview
This phase focuses on post-provisioning configuration. Ansible connects to the target EC2 server through SSH and executes playbooks to install Docker, configure firewall rules, and prepare the instance for container deployment.

Files
inventory.ini – Lists the EC2 host details
ansible.cfg – Defines connection configurations
install_docker.yml – Installs and configures Docker
configure_server.yml – Updates system packages and sets up the environment

Commands
cd /mnt/c/EmpApplication/ansible
 cp /mnt/c/Users/Dell/Downloads/EmpApplicationKeyPair.pem ~/.ssh/
 chmod 400 ~/.ssh/EmpApplicationKeyPair.pem
 cd /mnt/c/EmpApplication/ansible
 ssh -i ~/.ssh/EmpApplicationKeyPair.pem ubuntu@3.249.64.200
 ansible -i inventory.ini empapplication -m ping
 ansible-playbook -i inventory.ini empapp-docker.yml
Execution Steps

Test connectivity between the Ansible control node and the EC2 instance using the ping module

Run the Ansible playbook to install Docker

Verify Docker installation on the EC2 instance

Configure system settings and ensure Docker starts automatically on reboot

Deliverables
Ansible playbooks and inventory file
Screenshot showing successful playbook execution
Documentation explaining automation flow