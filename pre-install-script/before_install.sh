#!/bin/bash

#install httpd

yum update -y

yum install httpd -y
systemctl start httpd
systemctl enable httpd

# Install CodeDeploy Agent
yum install -y ruby
cd /home/ec2-user
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
./install auto
service codedeploy-agent start

