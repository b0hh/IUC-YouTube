CREATE TABLE CommunityPost
(
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
    channel_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Channel(ID),
    post_description TEXT,
    privacy INT NOT NULL FOREIGN KEY REFERENCES Privacy(ID),
    media_content IMAGE,
    -- oylama soru cevap gibi ozellikler de var sonra ekleriz
)
