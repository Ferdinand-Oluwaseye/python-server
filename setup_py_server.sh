#install dependencies
sudo apt install -y wget vim python

#creating a user
sudo useradd --create-home pythonuser
sudo usermod --shell /bin/bash pythonuser

#Enter user environment

sudo cp app.py /home/pythonuser

sudo su - pythonuser -c "mkdir public"

sudo cp public/index.html /home/pythonuser/public

#Writing service file

sudo cp python_server.service /etc/systemd/system/python_server.service

#Load service
sudo systemctl daemon-reload

#Start python  service
sudo systemctl start python_server
