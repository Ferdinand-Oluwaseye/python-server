#Stop python service
sudo systemctl stop python_server

#uninstall python services
sudo apt-get remove --purge python_server

sudo userdel pythonuser
 
sudo rm -rf /home/pythonuser
