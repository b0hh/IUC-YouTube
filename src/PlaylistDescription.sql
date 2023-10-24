CREATE TABLE PlaylistDescription 
(
  ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
  playlist_ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Playlist(ID),
  _description VARCHAR DEFAULT GETDATE(),
)