-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+---------------+
-- | ID | language_name |
-- +----+---------------+

CREATE TABLE Languages
(
	ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	language_name VARCHAR(255) NOT NULL 
)
