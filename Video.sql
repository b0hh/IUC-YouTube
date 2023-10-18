CREATE TABLE Video 
(
   ID uniqueidentifier NOT NULL DEFAULT newid() PRIMARY KEY,
   channelID uniqueidentifier NOT NULL FOREIGN KEY REFERENCES Chanel(ID), 
   title VARCHAR NOT NULL DEFAULT GETDATE(),
   createdAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   likes INT NOT NULL DEFAULT 0 ,
   countryID INT NOT NULL FOREIGN KEY REFERENCES Country(ID)
   --description FK farkli tablodan gelicek (buyuk data)
)
