-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+------+
-- | ID | link |
-- +----+------+

CREATE TABLE Link
(
    video_ID INT UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Video(ID),
    link VARCHAR NOT NULL UNIQUE
)
