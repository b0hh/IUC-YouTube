-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+------------+-------+----------+------------+-------+------------+---------+-------------------+------------+----------------+
-- | ID | channel_ID | title | duration | created_at | likes | country_ID | privacy | video_description | video_type | video_category |
-- +----+------------+-------+----------+------------+-------+------------+---------+-------------------+------------+----------------+

CREATE TABLE Video 
(
   ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
   channel_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Channel(ID), 
   duration INT NOT NULL,
   title VARCHAR NOT NULL DEFAULT GETDATE(),
   created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   likes INT NOT NULL DEFAULT 0 ,
   country_ID INT NOT NULL FOREIGN KEY REFERENCES Country(ID),
   privacy INT NOT NULL FOREIGN KEY REFERENCES Privacy(ID),
   video_description UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES VideoDescription(ID),
   video_type BIT DEFAULT 0, -- 0 -> normal icerik  / 1 -> cocuklara ozel icerik
   video_category INT NOT NULL FOREIGN KEY REFERENCES VideoCategory(ID),
   video_link VARCHAR NOT NULL UNIQUE FOREIGN KEY REFERENCES Link(link)
)
