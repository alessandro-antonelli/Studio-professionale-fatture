SELECT *
FROM   Organizzazioni as O
WHERE  EXISTS ( SELECT *
			    FROM Fatture as F 
			    WHERE F.Importo > 100 and
			F.IDOrganizzazioneEmittente = O.IDOrganizzazione )