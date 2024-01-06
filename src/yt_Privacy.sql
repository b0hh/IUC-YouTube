-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+--------------+
-- | ID | privacy_type |
-- +----+--------------+

CREATE TABLE Privacy
(
    ID INT PRIMARY KEY DEFAULT 0, -- 0 -> public / 1 -> unlisted / 2 -> private
    privacy_type VARCHAR(255) NOT NULL DEFAULT 'Public'
)
