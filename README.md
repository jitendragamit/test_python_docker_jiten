Please follow below steps for docker setup and run application :

1. docker run -i -t jitendragamit/test_python_docker /bin/bash

2. /etc/init.d/apache2 start

3. login into mysql (username = root, password = blank)

4. mysqldump -uroot -p db_python_test < /var/www/html/db_python_test.sql

5. cd /var/www/html

6. login into mysql and create database db_python_test
    e.g. mysql -uroot -p
         then create db_python_test

7. Apply below mysql after login into mysql (It's not required, but sometime it's giving error in latest version of mysql) 
	
	mysql> USE mysql;
	mysql> UPDATE user SET plugin='mysql_native_password' WHERE User='root';
	mysql> FLUSH PRIVILEGES;
	mysql> exit;

7. service mysql restart

8. python3 client_call_api.py

    test case 1 : after run above screen it will ask mac address, then 
	               type 00:00:0A and then press enter
                   it will return the company name of that mac address.
                   - similar way type 00:00:0c and 00-0D-4B, then check the result 
				   
9. below commands are optional
    a2enmod rewrite
    a2enmod cgi
