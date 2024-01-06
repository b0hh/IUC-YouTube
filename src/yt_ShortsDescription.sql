-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+--------------+
-- | ID | _description |
-- +----+--------------+


CREATE TABLE ShortsDescription
(
	ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
    shorts_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Shorts(ID), 
    _description VARCHAR(512) NOT NULL DEFAULT ' ', -- desrciption on tanimli oldugu icin _ eklendi.
)
