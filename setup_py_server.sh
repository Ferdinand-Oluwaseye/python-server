#install dependencies
sudo apt install -y wget vim python

#creating a user
getent passwd pythonuser > /dev/null

if [ $? -eq 0 ]; then
	echo "User exists"
else
	sudo useradd --create-home pythonuser
	sudo usermod --shell /bin/bash pythonuser
fi

#Enter user environment

sudo cp app.py /home/pythonuser

sudo su - pythonuser -c "mkdir -p  public"

sudo cp public/index.html /home/pythonuser/public

sudo chown -R pythonuser:pythonuser /home/pythonuser

#Writing service file

sudo cp python_server.service /etc/systemd/system/python_server.service

#Load service
sudo systemctl daemon-reload

#Start python  service
sudo systemctl start python_server
