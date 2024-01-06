-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+------+
-- | ID | link |
-- +----+------+

CREATE TABLE ShortsLink
(
    shorts_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Shorts(ID),
    link VARCHAR(255) NOT NULL UNIQUE
)
