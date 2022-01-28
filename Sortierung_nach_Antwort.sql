SELECT t.IDPerson1, t.IDPerson2, SUM(t.Score) AS Score
FROM (

		SELECT Pa1.ID_Person AS IDPerson1, Pa1.ID_Frage, Pa1.Antwort AS Antwort1, Pa2.ID_Person AS IDPerson2, 
			Pa2.Antwort AS Antwort2,
			(CASE WHEN Pa1.Antwort = Pa2.Antwort THEN 1 ELSE 0 END) AS Score 
		FROM T_Person_Antwort Pa1
			INNER JOIN T_Person_Antwort Pa2 ON Pa1.ID_Frage = Pa2.ID_Frage
		WHERE Pa1.ID_Person = 1 AND Pa2.ID_Person <> 1
	
		) t
GROUP BY t.IDPerson1, t.IDPerson2
ORDER BY t.IDPerson1, t.IDPerson2, Score
