if [ -f " /etc/yum.repos.d/jenkins.repo" ]
then
 echo "file exist"
 sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
 sudo yum update
 sudo yum install -y jenkins 
else
 sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
 sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
 sudo yum update
 sudo yum install -y jenkins
fi
