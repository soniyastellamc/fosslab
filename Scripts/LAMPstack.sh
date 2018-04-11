	#!/bin/bash

	#Setting up a LAMP Stack

    	#Apache Installation
   	sudo apt-get update
  	sudo apt-get install apache2

	#MySQL Installation
   	sudo apt-get install mysql-server
   	mysql_secure_installation
	#Setting up MySQL
   	mysql -u root -p

	#PHP Installation
    	sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
	sudo nano /etc/apache2/mods-enabled/dir.conf
	sudo systemctl restart apache2
	sudo systemctl status apache2
	 
	#creates a blank php file and displays phpinfo
	sudo nano /var/www/html/info.php	

	#To visit the php page	
	http://your_server_IP_address/info.php

	
