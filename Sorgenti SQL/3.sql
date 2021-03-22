SELECT P.CodiceFiscale, COUNT(F.IdFatture) as NumeroFatture
FROM	Persone as P JOIN
		Fatture as F
		ON F.IDpersonaIntestataria = P.IDpersona
WHERE F.importo > 1000
GROUP BY P.IDpersone
HAVING NumeroFatture > 3