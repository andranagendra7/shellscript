if [ "$isCentOs7" == true ]
then
    sudo systemctl start jenkins
    echo "jenykins start"
else 
    sudo service jenkins restart
    echo "jenkins re-started"
fi
