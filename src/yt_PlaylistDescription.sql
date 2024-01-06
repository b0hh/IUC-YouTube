-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+-------------+--------------+
-- | ID | playlist_ID | _description |
-- +----+-------------+--------------+

CREATE TABLE PlaylistDescription 
(
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
    playlist_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Playlist(ID),
    _description VARCHAR(512) DEFAULT GETDATE(),
)
