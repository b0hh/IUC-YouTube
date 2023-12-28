-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+-----------+
-- | ID | type_name |
-- +----+-----------+

CREATE TABLE ChannelTypes
(
    ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    type_name VARCHAR(64),
)
