SELECT *
FROM Organizzazioni as O
WHERE EXISTS ( SELECT *
			   FROM Fatture as F 
			   WHERE F.importo > 100 AND F.IDOrganizzazioneEmittente = O.IDOrganizzazione )