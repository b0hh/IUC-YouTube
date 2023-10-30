-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+----------+---------+
-- | ID | video_ID | comment |
-- +----+----------+---------+

CREATE TABLE Comments 
(
	ID UNIQUEIDENTIFIER  DEFAULT newid() NOT NULL PRIMARY KEY,
	video_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Video(ID),
	comment TEXT NOT NULL,
)