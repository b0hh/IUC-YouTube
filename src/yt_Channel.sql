CREATE TABLE Channel
(
	ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
	channelName VARCHAR(128) NOT NULL,
	channelDomainName VARCHAR(128) NOT NULL UNIQUE,
	channelCreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	channelLanguage INT FOREIGN KEY REFERENCES Languages(ID),
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	owner_age DATETIME NOT NULL,
)