-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+---------------+
-- | ID | category_name |
-- +----+---------------+

CREATE TABLE VideoCategory 
(
    ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    video_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Video(ID),
    category_ID INT NOT NULL FOREIGN KEY REFERENCES Category(ID),
)
