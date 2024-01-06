-- ↓ SQL TABLO GÖRÜNÜMÜ ↓

-- +----+--------------+---------------------+--------------------+------------------+------------+-----------+
-- | ID | channel_name | channel_domain_name | channel_created_at | channel_language | created_at | owner_age | 
-- +----+--------------+---------------------+--------------------+------------------+------------+-----------+

CREATE TABLE Channel
(
	ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
	channel_name VARCHAR(255) NOT NULL,
	channel_domain_name VARCHAR(255) NOT NULL UNIQUE, -- Örnek : https://www.youtube.com/@user_name -> @username hem kullanıcı adı hem de kanalı tanımlayan özel domain
	channel_type INT FOREIGN KEY REFERENCES ChannelTypes(ID),
	is_verified BIT NOT NULL DEFAULT 0, -- 0 -> Dogrulanmamis kanal / 1 -> dogrulanmis kanal 
	--TODO channel kisisel bilgileri icin farkli tablo olusturulması
)
