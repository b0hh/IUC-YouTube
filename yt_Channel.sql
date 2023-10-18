CREATE TABLE Channel
(
	ID uniqueidentifier NOT NULL DEFAULT newid() PRIMARY KEY,
	channelName varchar(128) NOT NULL,
	channelDomainName varchar(128) NOT NULL unique,
	channelCreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
)