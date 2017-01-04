-- create database and a default user.

CREATE DATABASE IF NOT EXISTS XXXmydbXXX;
FLUSH PRIVILEGES;
CREATE USER XXXdefault_userXXX@'localhost' IDENTIFIED BY 'XXXpasswdXXX';
GRANT ALL ON `XXXmydbXXX`.* TO 'XXXdefault_userXXX'@'localhost';

-- END
