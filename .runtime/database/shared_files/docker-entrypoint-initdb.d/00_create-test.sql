create database test;
GRANT ALL PRIVILEGES ON *.* TO 'app_user';
CREATE USER 'test_user' IDENTIFIED BY 'secret';
GRANT ALL PRIVILEGES ON test.* TO 'test_user';
