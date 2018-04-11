#!/bin/bash

#!/bin/bash

#Package Installation
sudo apt-get install samba
sudo apt-get install -y samba      
#Installation all listed packages
sudo apt-get install samba apache2 
#Displaying a colored progress bar
sudo apt install samba             


#Updating package lists
sudo apt-get update

#Updating installed packages
sudo apt-get upgrade


#Finding a package
apt-cache search samba
apt search samba


#View information about a specific package
apt-cache show samba              #Locally cached information about a package
apt show samba
dpkg -s samba                     #Currently installed status of the package


#remove one or more installed packages
sudo apt-get autoremove           #Unwanted packages are removed
sudo apt-get remove samba
sudo apt remove samba


#get help
man apt-get			 #Updating the local package database and working with packages
man apt-cache           	 #Querying the local package database
man dpkg			 #Working with individual package files and querying installed packages
man apt #Working with a more concise, user-friendly interface to most basic operations
