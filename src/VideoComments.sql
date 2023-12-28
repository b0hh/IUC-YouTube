-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+----------+---------+-----------+------------------+
-- | ID | video_ID | comment | is_pinned | liked_by_creator |
-- +----+----------+---------+-----------+------------------+

CREATE TABLE VideoComments 
(
	ID UNIQUEIDENTIFIER  DEFAULT NEWID() NOT NULL PRIMARY KEY,
	video_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Video(ID),
	comment TEXT NOT NULL,
  	is_pinned BIT NOT NULL DEFAULT 0, -- 0 -> sabitlenmemis / 1 -> sabitlenmis
  	liked_by_creator BIT NOT NULL DEFAULT 0, -- 0 -> icerik ureticisi begenmemis / 1 -> icerik urecticisi begenmis
	like_count INT NOT NULL DEFAULT 0,
	dislike_count INT NOT NULL DEFAULT 0,
)
