SELECT * 
FROM Fatture as F
WHERE NOT EXISTS ( SELECT * 
				   FROM Pagamenti as P
				   WHERE P.Modalit� == 'Contanti' and F.IDFattura = P.IDFattura )