if [ "$isCentOs7" == true ]
then
    sudo systemctl start jenkins
else 
    sudo service jenkins start
fi
