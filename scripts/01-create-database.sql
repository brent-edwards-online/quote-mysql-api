DROP DATABASE IF EXISTS QuotesApi;
CREATE DATABASE QuotesApi;
USE QuotesApi;

-- Create Tables
CREATE TABLE Quotes(
	QuoteId int NOT NULL AUTO_INCREMENT,
	Quote VARCHAR(20), 
    Created DATETIME DEFAULT CURRENT_TIMESTAMP, 
    LastModified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
     PRIMARY KEY(QuoteId)
);

-- Seed Users and Roles
FLUSH PRIVILEGES;
DROP USER 'quotes_su'@localhost;
CREATE USER 'quotes_su'@localhost IDENTIFIED BY '$t^p}}U67SAcknP^';
GRANT ALL PRIVILEGES ON * . * TO 'quotes_su'@'localhost';

DROP USER 'quotes_api'@localhost;
CREATE USER 'quotes_api'@'localhost' IDENTIFIED BY 'x,2CUM[Y2}wJW/m~';
GRANT DELETE ON QuotesApi.Quotes TO 'quotes_api'@'localhost';
GRANT UPDATE ON QuotesApi.Quotes TO 'quotes_api'@'localhost';
GRANT SELECT ON QuotesApi.Quotes TO 'quotes_api'@'localhost';
GRANT INSERT ON QuotesApi.Quotes TO 'quotes_api'@'localhost';

FLUSH PRIVILEGES;

-- Seed Data
INSERT INTO Quotes (Quote) VALUES ("Quote1");
INSERT INTO Quotes (Quote) VALUES ("Quote2");
INSERT INTO Quotes (Quote) VALUES ("Quote3");
INSERT INTO Quotes (Quote) VALUES ("Quote4");
INSERT INTO Quotes (Quote) VALUES ("Quote5");
