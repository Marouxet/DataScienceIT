CREATE USER 'mariano'@'localhost'IDENTIFIED BY 'fido1091';
GRANT ALL privileges ON store_one.* to 'mariano'@'localhost'; 
flush privileges;

create database laboratorio;
GRANT ALL privileges ON laboratorio.* to 'mariano'@'localhost'; 