SELECT *
FROM   Pagamenti as p
WHERE  p.Modalita = "Bonifico" and
	   p.CifraPagata > ( SELECT MAX(P1.CifraPagata)
						 FROM Pagamenti as P1
						 WHERE P1.Modalita = "Assegno" )