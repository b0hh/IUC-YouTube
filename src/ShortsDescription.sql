CREATE TABLE ShortsDescription
(
	ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
    _description TEXT NOT NULL DEFAULT "", -- desrciption on tanimli oldugu icin _ eklendi.
)