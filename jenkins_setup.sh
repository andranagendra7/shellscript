#!/bin/ba nsh
path="/etc/yum.repos.d/jenkins.repo"
file="/etc/init.d/jenkins"
if [ -e $path ] && [ -e $file ];
then
    echo "jenkins installed already"
else
    #echo "not exist"
    echo "creating the jenkis repos file"
    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    echo "Now, we adding the jenkins key"
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    echo "We downloading the jenkins rpm package"
    wget https://pkg.jenkins.io/redhat-stable/jenkins-2.150.3-1.1.noarch.rpm
    filename="jenkins-2.150.3-1.1.noarch.rpm"
    if [ -f $filename ];
    then  
          echo "Now, we are  installing the jenkins"
          rpm -ivh $filename
          rm -fr $filename
          echo "jenkins installed successfuly"
    fi
fi
