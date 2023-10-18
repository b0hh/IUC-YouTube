CREATE TABLE Comments 
(
	ID uniqueidentifier  DEFAULT newid() NOT NULL PRIMARY KEY,
	videoID uniqueidentifier NOT NULL FOREIGN KEY REFERENCES Video(ID),
	comment TEXT,
)
