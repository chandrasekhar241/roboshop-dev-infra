#!/bin/bash

component=$1
environment=$2
dnf install ansible -y # install ansible

mkdir -p /var/log/roboshop/
chown -R ec2-user:ec2-user /var/log/roboshop
chmod -r 755 /var/log/roboshop
touch /var/log/roboshop/ansible.log

cd /home/ec2-user
git clone https://github.com/chandrasekhar241/roboshop-ansible-v3.git
cd roboshop-ansible-v3
git pull
ansible-playbook -e component=$component -e env=$environment roboshop.yaml