-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+--------------+---------------------+--------------------+------------------+------------+-----------+
-- | ID | channel_name | channel_domain_name | channel_created_at | channel_language | created_at | owner_age | 
-- +----+--------------+---------------------+--------------------+------------------+------------+-----------+

CREATE TABLE Channel
(
	ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
	channel_name VARCHAR(128) NOT NULL,
	channel_domain_name VARCHAR(128) NOT NULL UNIQUE, -- Örnek : https://www.youtube.com/@user_name -> @username hem kullanıcı adı hem de kanalı tanımlayan özel domain
	channel_created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	channel_language INT FOREIGN KEY REFERENCES Languages(ID),
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	owner_age DATETIME NOT NULL,
	-- channel kisisel bilgileri icin farkli tablo olusturulmasi
)