
# İÜC DBMS II FİNAL ÖDEVİ

Final ödevi için "YouTube Database Design"

## Gorev Dagılımı
![Gorev Dagılımı](https://github.com/rqoto/IUC-YouTube/assets/142506536/9556a8cc-869f-4e89-8a8f-9074577b191e)

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
Tablo ingilizce ve PascalCase olarak tanımlanacaktır. Tablo isimlerinin açıklayıcı olması zorunludur.
Birden fazla kelimeden oluşan tabloların isimleri kısaltma/eksiltme yapılmadan tam haliyle olacak.

```
    CREATE TABLE VideoDescription (...)   -> Doğru kullanım  ✅
    CREATE TABLE Videodescription (...)   -> Yanlış kullanım ❎
    CREATE TABLE video_description (...)  -> Yanlış kullanım ❎
    CREATE TABLE VideoDesc (...)          -> Yanlış kullanım ❎
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

ön tanınmlı isimler başlarına "_" eklenerek yazılacak.

```
    _add  ...,           -> Doğru kullanım  ✅
    __add ...,           -> Yanlış kullanım ❎
    add_ ...,            -> Yanlış kullanım ❎
```


