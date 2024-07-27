#!/bin/bash

#install httpd

yum update -y

yum install httpd -y
systemctl start httpd -y
systemctl enable httpd -y


