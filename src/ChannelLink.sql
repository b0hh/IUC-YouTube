
-- +----+------+
-- | ID | link |
-- +----+------+

CREATE TABLE ChanelLink
(
    channel_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Channel(ID),
    link VARCHAR NOT NULL UNIQUE
)
