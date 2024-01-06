-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+---------+-----+
-- | ID | _description  |
-- +----+---------+-----+

CREATE TABLE VideoDescription
(
	ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
    video_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Video(ID),
    _description VARCHAR(512) NOT NULL DEFAULT GETDATE(), 

)
