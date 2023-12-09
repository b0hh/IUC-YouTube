-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+--------------+---------------------+--------------------+------------------+------------+-----------+
-- | ID | channel_name | channel_domain_name | channel_created_at | channel_language | created_at | owner_age | 
-- +----+--------------+---------------------+--------------------+------------------+------------+-----------+

CREATE TABLE Channel
(
	ID UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Account(ID),
	channel_name VARCHAR(255) NOT NULL,
	channel_domain_name VARCHAR(255) NOT NULL UNIQUE, -- Örnek : https://www.youtube.com/@user_name -> @username hem kullanıcı adı hem de kanalı tanımlayan özel domain
	channel_created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	channel_language INT FOREIGN KEY REFERENCES Languages(ID),
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	owner_age DATETIME NOT NULL,
	--TODO channel kisisel bilgileri icin farkli tablo olusturulması
)
