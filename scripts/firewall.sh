#!bin/bash
#configure firewall

# Allows necessary traffic
sudo ufw allow 'Apache Full'
sudo ufw  enable 
sudo ufw status

#Executable
chmod +x scripts/firewall.sh 


