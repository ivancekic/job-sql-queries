Select Stavka_Dok.Vrsta_Dok VrDok, Stavka_Dok.Broj_Dok BrDok, Stavka_Dok.Godina God, Stavka_Dok.Stavka, Stavka_Dok.Proizvod,
round(kolicina/pakovanje.za_kolicinu,2) Pakovanje,
round(kolicina/pakovanje.za_kolicinu,2) *pakovanje.neto NetoKG,
round(kolicina/pakovanje.za_kolicinu,2) *pakovanje.bruto BrutoKG,
Stavka_Dok.Kolicina,
Stavka_Dok.Jed_Mere, Lot_Serija, Cena, Stavka_Dok.valuta,Rabat, Porez,           Taksa, Akciza, Proizvod.Naziv NazivPr,
Grupa_Poreza GrPoreza, Faktor, Proizvod.Jed_Mere JM
From Stavka_Dok, Proizvod, pakovanje
Where Stavka_Dok.Proizvod = Proizvod.Sifra
     and Stavka_dok.Proizvod = Pakovanje.proizvod (+)


Order By Stavka_dok.proizvod;
