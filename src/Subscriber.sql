CREATE TABLE Subscriber
(
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
    channel_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Channel(ID), 
)