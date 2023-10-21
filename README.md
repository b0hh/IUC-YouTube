# IUC DBMS II FINAL ODEVI

Final ödevi için "YouTube Database Design"

## Style Guide

Projede yazılan kodların bütünlüğü için tasarım rehberi

#### Sütun İsimlendirmeleri
Sütun isimleri ingilizce ve snake_case olarak yazılacaktır.
```
    video_name ...,         -> Doğru kullanım  ✅
    videoIsmi ...,          -> Yanlış kullanım ❎
    video_numarasi ...,     -> Yanlış kullanım ❎
```
#### SQL Komutları
Bütün SQL Komutları UPPERCASE olarak yazılacaktır.

```
    SELECT * FROM <TABLE NAME> -> Doğru kullanım  ✅
    select * From <TABLE NAME> -> Yanlış kullanım ❎
    Select * From <TABLE NAME> -> Yanlış kullanım ❎
```

#### Tablo İsimlendirilmeleri
Tablo isimleri baş harfi büyük olacak şekilde ingilizce olarak tanımlanacaktır. Tablo isimlerinin açıklayıcı olması zorunludur.

```
    CREATE TABLE Videos (...)   -> Doğru kullanım  ✅
    CREATE TABLE videolar (...) -> Yanlış kullanım ❎
    CREATE TABLE VIDEOS (...)   -> Yanlış kullanım ❎
    CREATE TABLE vid (...)      -> Yanlış kullanım ❎
```

#### Birden Fazla Satırı Olan SQL Komutlarının Yazımı
Komutlar anlaşılacak şekilde satırlara bölünmelidir.

```
    Doğru kullanım  ✅
    ALTER TABLE <TABLE NAME> --yeni bir komuta geçerken alt satıra geçilmeli
    ADD <COLUMN NAME> ...   

    Yanlış kullanım ❎
    ALTER TABLE <TABLE NAME> ADD <COLUMN NAME> 
    ... --sütun hakkındaki bilgiler sütundan bağımsız bir satırda olduğu için yanlış
    
    Yanlış kullanım ❎
    ALTER TABLE <TABLE NAME> ADD 
    <COLUMN NAME> -- sütun kendinden önce gelen SQL komutundan bağımsız olduğu için yanlış
    ... --sütun hakkındaki bilgiler sütundan bağımsız bir satırda olduğu için yanlış
```
####  Ekstra İsimlendirme Kuralları
id -> ID şeklinde yazılacak.

```
    video_ID  ...,           -> Doğru kullanım  ✅
    videoID ...,             -> Yanlış kullanım ❎
    video_id ...,            -> Yanlış kullanım ❎
```

on tanimli isimler basina "_" eklenerek yazilacak

```
    _add  ...,           -> Doğru kullanım  ✅
    __add ...,           -> Yanlış kullanım ❎
    add_ ...,            -> Yanlış kullanım ❎
```


