-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+----------------------+------------------+----------------------+-------------------------+
-- | ID | account_email_adress | account_password | account_banner_image | account_profile_picture |
-- +----+----------------------+------------------+----------------------+-------------------------+

CREATE TABLE Account
(
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
    account_email_adress VARCHAR(320) NOT NULL UNIQUE,
    account_password VARCHAR(64) NOT NULL, -- INSERT ederken hashlenicek
    account_banner_image IMAGE,
    account_profile_picture IMAGE,
)
