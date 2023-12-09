-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+----------+---------+-----------+------------------+
-- | ID | video_ID | comment | is_pinned | liked_by_creator |
-- +----+----------+---------+-----------+------------------+

CREATE TABLE Comments 
(
	ID UNIQUEIDENTIFIER  DEFAULT newid() NOT NULL PRIMARY KEY,
	video_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Video(ID),
	comment TEXT NOT NULL,
  is_pinned BIT DEFAULT 0, -- 0 -> sabitlenmemis / 1 -> sabitlenmis
  liked_by_creator BIT DEFAULT 0, -- 0 -> icerik ureticisi begenmemis / 1 -> icerik urecticisi begenmis
)
