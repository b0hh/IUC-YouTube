-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+--------------+
-- | ID | country_name |
-- +----+--------------+

CREATE TABLE Country 
(
    ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),,
    country_name VARCHAR NOT NULL UNIQUE
)
