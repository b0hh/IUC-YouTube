# IUC DBMS II FINAL ODEVI

final odevi icin YouTube database design

## Style Guide

Projede yazilan kodlarin butunlugu icin tasarim rehberi

#### Sutun Isimlendirmeleri
Sutun isimleri ingilizce ve snake_case olarak yazilacaktir
```
    video_name ...,           -> Dogru kullanim  ✅
    videoIsmi ...,          -> Yanlis kullanim ❎
    video_numarasi ...,     -> Yanlis kullanim ❎
```
#### SQL Komutlari
Butun SQL Komutlari UPPERCASE olarak yazilacaktir.

```
    SELECT * FROM <TABLE NAME> -> Dogru kullanim  ✅
    select * From <TABLE NAME> -> Yanlis kullanim ❎
    Select * From <TABLE NAME> -> Yanlis kullanim ❎
```

#### Tablo Isimlendirilmeleri
Tablo isimleri bas harfi buyuk olucak sekilde ingilizce olarak tanimlanacaktir. Tablo isimlerinin aciklayici olmasi zorunludur

```
    CREATE TABLE Videos (...)   -> Dogru kullanim  ✅
    CREATE TABLE videolar (...) -> Yanlis kullanim ❎
    CREATE TABLE VIDEOS (...)   -> Yanlis kullanim ❎
    CREATE TABLE vid (...)      -> Yanlis kullanim ❎
```

#### Birden Fazla Satiri Olan SQL Komutlarinin Yazimi
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

