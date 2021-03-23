SELECT	 P.Modalita, SUM(CifraPagata) as Totale
FROM	 Pagamenti as P
WHERE	 P.CifraPagata > 10
GROUP BY P.Modalita
HAVING	 SUM(CifraPagata) < 10000
ORDER BY Totale ASC