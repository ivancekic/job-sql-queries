Select SUM(SD.KOLICINA * PAK.BRUTO * PODNOSJEDINICA.ODNOS(SD.JED_MERE,PPROIZVOD.JEDMERE(SD.PROIZVOD)) / PAK.ZA_KOLICINU )
Into nBruto
From stavka_dok sd, dokument d , pakovanje pak
Where   d.godina     = DokumentBruto.Godina         and
		d.vrsta_dok  in ( DokumentBruto.Vrsta_dok ) and
		d.broj_dok   in ( DokumentBruto.Broj_dok )  and
		sd.godina    (+)= d.godina          and
		sd.vrsta_dok (+)= d.vrsta_dok       and
		sd.broj_dok  (+)= d.broj_dok        and
		sd.proizvod = pak.proizvod ;