SELECT O.*
FROM   Organizzazioni as O JOIN Fatture as F
	   ON F.IDorganizzazioneEmittente = O.IDorganizzazione
WHERE  F.Importo > 100