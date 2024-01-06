CREATE TABLE ShortsContent
(
    shorts_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Shorts(ID),
    content VARCHAR(255) NOT NULL -- file path olarak girilicek -> shorts/user_short.mp4
)
