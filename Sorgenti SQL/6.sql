SELECT *
FROM Pagamenti as p
WHERE p.Modalità = 'Bonifico' AND p.CifraPagata > ( SELECT MAX(P1.CifraPagata)
													FROM Pagamenti as P1
													WHERE P1.Modalità = 'Assegno' )