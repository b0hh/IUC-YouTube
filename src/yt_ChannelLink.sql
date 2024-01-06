-- +----+------+
-- | ID | link |
-- +----+------+

CREATE TABLE ChannelLink
(
    channel_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Channel(ID),
    link VARCHAR(255) NOT NULL UNIQUE
)
