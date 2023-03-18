#! /bin/bash
yum update -y
yum install python3 -y
pip3 install flask
yum install git -y
cd /home/ec2-user
wget -P templates https://raw.githubusercontent.com/........ # Plase add your index.html to here 
wget -P templates https://raw.githubusercontent.com/......... # Please add your result.html to here
wget https://raw.githubusercontent.com/serdarcw/............ # Please add your python.py file to here
python3 app.py

# You have to mention your file directory in user-data, That's gonna help us to create our application on flask.