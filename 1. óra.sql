//2. Válaszoljon az alábbi kérdésekre az adatbázissal kapcsolatban!
a) Melyik tábla mely oszlopa vehet fel NULL értéket?
b) Van-e egyedi, illetve ismétlődést megengedő index valamelyik táblára?
c) Mekkora helyet foglal jelenleg a rendszer a sutik tábla adatainak, illetve indexeinek?
d) Mi lenne a következő felvett sütemény azonosítója?
e) Milyen megszorítás vonatkozik az arak tábla sutiid mezőjére?

Válasz: a, egyik sem
b, van egyedi, illetve ismétlődést megengedő index.
c, mind2 16 kB
d, 140
e, not null index, REFERENCES     

3. Készítsen lekérdezést, amellyel a db egységre árusított, 300 és 800 Ft közötti árú tortaszeletek
nevét és egységárát (ertek) jeleníti meg, név szerint rendezve! //

Select nev, ertek
FROM sutik INNER JOIN arak ON id = sutiid
where egyseg = "db" 
    and ertek BETWEEN 300 and 800
    and tipus = "tortaszelet"
    order by 1;


4. Melyek azok a díjazott, torta vagy tortaszelet típusú sütemények, amelyek semmilyen tartalom
szerint nem mentesek (amelyekhez nem kapcsolódik rekord)? Írja ki az ilyen sütemények nevét és
típusát! 
Select nev, tipus
from sutik Left join tartalmak on id = sutiid
where tipus like 'torta%'
    and dijazott
    and tid is NULL; 

5. Listázza azoknak a süteményeknek az azonosítóját és nevét (utóbbi szerint ábécé-rendben),
amelyek 1-nél több tartalomtól mentesek!

Select id, nev
from sutik inner join tartalmak on id = sutiid
group by id, nev
having count(*) > 1
order by 2;

6. Készítsen tárolt eljárást, amely egy egységnevet (pl. db) és egy összeget kap paraméterként, és az
ilyen egységben árult sütemények árát az összeggel megnöveli!

7. Készítsen sorszintű eseménykezelőt (triggert), amely egy ár változásakor egy erre a célra
létrehozott modositasok táblában rögzíti az ár azonosítóját, az aktuális dátum-idő értéket, és a
korábbi árat (amire az OLD.ertek kifejezéssel hivatkozhatunk)!
CREATE TABLE modositasok (
id INT NOT NULL AUTO_INCREMENT ,
arid INT NOT NULL ,
datum DATETIME NOT NULL ,
regiar INT NOT NULL ,
PRIMARY KEY (id)
) ENGINE = InnoDB;