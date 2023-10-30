-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+--------------+
-- | ID | country_name |
-- +----+--------------+

CREATE TABLE Country 
(
    ID INT PRIMARY KEY NOT NULL,
    country_name VARCHAR NOT NULL UNIQUE
)
