# IUC DBMS II FINAL ODEVI

Final ödevi icin "YouTube Database Design"

## Style Guide

Projede yazılan kodların bütünlüğü için tasarım rehberi

#### Sütun İsimlendirmeleri
Sütun isimleri ingilizce ve snake_case olarak yazılacaktır.
```
    video_name ...,         -> Dogru kullanim  ✅
    videoIsmi ...,          -> Yanlis kullanim ❎
    video_numarasi ...,     -> Yanlis kullanim ❎
```
#### SQL Komutları
Bütün SQL Komutları UPPERCASE olarak yazılacaktır.

```
    SELECT * FROM <TABLE NAME> -> Dogru kullanim  ✅
    select * From <TABLE NAME> -> Yanlis kullanim ❎
    Select * From <TABLE NAME> -> Yanlis kullanim ❎
```

#### Tablo İsimlendirilmeleri
Tablo isimleri baş harfi büyük olacak şekilde ingilizce olarak tanımlanacaktır. Tablo isimlerinin açıklayıcı olması zorunludur.

```
    CREATE TABLE Videos (...)   -> Dogru kullanim  ✅
    CREATE TABLE videolar (...) -> Yanlis kullanim ❎
    CREATE TABLE VIDEOS (...)   -> Yanlis kullanim ❎
    CREATE TABLE vid (...)      -> Yanlis kullanim ❎
```

#### Birden Fazla Satırı Olan SQL Komutlarinin Yazımı
Komutlar anlasilacak sekilde satirlara bolunmelidir.

```
    Dogru kullanim  ✅
    ALTER TABLE <TABLE NAME> --yeni bir komuta gecerken alt satira gecilmeli
    ADD <COLUMN NAME> ...   

    Yanlis kullanim ❎
    ALTER TABLE <TABLE NAME> ADD <COLUMN NAME> 
    ... --sutun hakkindaki bilgiler sutuntan bagimsiz bir satirda oldugu icin Yanlis
    
    Yanlis kullanim ❎
    ALTER TABLE <TABLE NAME> ADD 
    <COLUMN NAME> -- sutun kendinden once gelen SQL komutundan bagimsiz oldugu icin yanlis
    ... --sutun hakkindaki bilgiler sutuntan bagimsiz bir satirda oldugu icin yanlis
```

