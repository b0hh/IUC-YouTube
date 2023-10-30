-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+----------+------------+------------+
-- | ID | video_ID | channel_ID | privacy_ID |
-- +----+----------+------------+------------+

CREATE TABLE Playlist 
(
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
    video_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Video(ID),
    channel_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Channel(ID),
    privacy_ID INT NOT NULL FOREIGN KEY REFERENCES Privacy(ID),

)