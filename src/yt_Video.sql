-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+------------+-------+----------+------------+-------+------------+---------+-------------------+------------+----------------+
-- | ID | channel_ID | title | duration | created_at | likes | country_ID | privacy | video_description | video_type | video_category |
-- +----+------------+-------+----------+------------+-------+------------+---------+-------------------+------------+----------------+

CREATE TABLE Video 
(
   ID                UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
   channel_ID        UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Channel(ID), 
   duration          INT NOT NULL,
   title             VARCHAR NOT NULL DEFAULT GETDATE(),
   created_at        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   privacy_ID           INT NOT NULL FOREIGN KEY REFERENCES Privacy(ID),
   video_type        BIT DEFAULT 0, -- 0 -> normal icerik  / 1 -> cocuklara ozel icerik
   video_link        VARCHAR NOT NULL UNIQUE FOREIGN KEY REFERENCES Link(link)
)
