-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+------------+--------------+
-- | ID | channel_ID | _description | 
-- +----+------------+--------------+

CREATE TABLE ChannelDescription
(
	ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
    channel_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Account(ID),
   _description TEXT NOT NULL DEFAULT ' ', -- desrciption on tanimli oldugu icin _ eklendi.
)    
