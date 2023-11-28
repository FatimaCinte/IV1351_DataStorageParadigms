SELECT TO_CHAR(d.date, 'Month') AS month, 
		COUNT(l.lesson_id) AS total,
		COUNT(CASE WHEN l.max_nr_of_students = '1' THEN 1 END) AS indv,
		COUNT (CASE WHEN l.max_nr_of_students > '1' AND l.target_genre_id IS NULL THEN 1 END) AS grp,
		COUNT (CASE WHEN l.target_genre_id IS NOT NULL THEN 1 END) AS ens
FROM lesson AS l INNER JOIN date AS d ON l.date_id = d.date_id
WHERE EXTRACT(YEAR FROM d.date) = 2023
GROUP BY TO_CHAR(d.date,'Month')
ORDER BY month;


