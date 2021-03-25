SELECT	 O.PartitaIVA, COUNT(F.IdFatture) as NumeroFatture
FROM	 Organizzazioni as O JOIN Fatture as F
		 ON F.IDorganizzazioneEmittente = O.IDorganizzazione
WHERE	 F.Importo > 1000
GROUP BY O.PartitaIVA
HAVING	 NumeroFatture > 3