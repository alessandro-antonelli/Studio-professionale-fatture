SELECT P.*
FROM Persone as P JOIN Fatture as F
	 ON F.IDpersonaintestataria = P.IDpersona
WHERE F.Importo > 100