SELECT *
FROM   Organizzazioni as O
WHERE  EXISTS ( SELECT *
			    FROM Pagamenti as P 
			    WHERE P.DataPagamento < "01012002" and
					  P.IDOrganizzazione = O.IDOrganizzazione )