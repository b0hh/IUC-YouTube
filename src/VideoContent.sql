CREATE TABLE VideoContent
(
    video_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Video(ID),
    content VARCHAR(255) NOT NULL -- file path olarak girilicek -> video/user_video.mp4
)