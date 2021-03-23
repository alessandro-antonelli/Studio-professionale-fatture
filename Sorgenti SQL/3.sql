SELECT	 P.CodiceFiscale, COUNT(F.IdFatture) as NumeroFatture
FROM	 Persone as P JOIN Fatture as F
		 ON F.IDpersonaIntestataria = P.IDpersona
WHERE	 F.Importo > 1000
GROUP BY P.IDpersone P.CodiceFiscale
HAVING	 NumeroFatture > 3