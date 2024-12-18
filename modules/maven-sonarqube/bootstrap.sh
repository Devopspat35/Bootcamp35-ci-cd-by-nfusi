#!/bin/bash
sudo -i
sudo hostnamectl set-hostname  sonar
sudo timedatectl set-timezone America/New_York
sudo yum update -y
sudo yum install tree nano dnf git wget rpm vim -y
sudo yum install net-tools unzip gnupg2 curl nginx -y
sudo yum remove java* -y
sudo yum install openjdk-11-jre -y
#create sonar-user
sudo adduser sonar
sudo passwd sonar <<EOF
foncha
EOF
sudo echo "sonar ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/sonar
#Enable PasswordAuthentication in the server
sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
sudo service sshd restart
cd /opt
#install sonarqube on ubuntu
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.5.1.90531.zip
sudo unzip sonarqube-10.5.1.90531.zip
sudo rm -rf sonarqube-10.5.1.90531.zip
sudo mv sonarqube-10.5.1.90531 sonarqube
#Grant file permissions for sonar user to start and manage sonarQube
sudo chown -R sonar:sonar sonarqube/
sudo chmod -R 775 sonarqube/
sudo systemctl daemon-reload
#install maven nodoje and npm on redhat
sudo yum install maven nodejs npm -y
#switch to sonar-user
sudo su - sonar
#start sonarQube server
#sh /opt/sonarqube/bin/linux-x86-64/sonar.sh start
#sh /opt/sonarqube/bin/linux-x86-64/sonar.sh status
#accessed port:9000
#default USERNAME: admin
#default password: admin

