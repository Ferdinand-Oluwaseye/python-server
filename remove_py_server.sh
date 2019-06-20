#Stop python service
sudo systemctl stop python_server

#uninstall jenkins
sudo apt-get remove --purge python_server

sudo userdel pythonuser
 
sudo rm -rf /home/pythonuser
