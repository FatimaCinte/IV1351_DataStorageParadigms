/*  IV1351 Data Storage Paradigms, project - Fatima Mohammad Ali, Mehrdad Vafaee  */

/**Query 1, two versions**/
/**Version 1**/
SELECT TO_CHAR(d.date, 'Month') AS "Month", 
		COUNT(l.lesson_id) AS "Total",
		COUNT(CASE WHEN l.max_nr_of_students = '1' THEN 1 END) AS "Individual",
		COUNT (CASE WHEN l.max_nr_of_students > '1' AND l.target_genre_id IS NULL THEN 1 END) AS "Group",
		COUNT (CASE WHEN l.target_genre_id IS NOT NULL THEN 1 END) AS "Ensemble"
FROM lesson AS l INNER JOIN date AS d ON l.date_id = d.date_id
WHERE EXTRACT(YEAR FROM d.date) = 2023
GROUP BY TO_CHAR(d.date,'Month')
ORDER BY "Month";

/**Version 2**/
SELECT TO_CHAR(date.date, 'Month') AS "Month", 
COUNT(*) AS "Total", 
COUNT(*) filter (where max_nr_of_students = '1') AS "Individual",
COUNT(*) filter (where max_nr_of_students > '1' AND target_genre_id IS NULL) AS "Group",
COUNT(*) filter (where target_genre_id IS NOT NULL) AS "Ensemble"
FROM lesson JOIN date ON lesson.date_id = date.date_id
WHERE EXTRACT(YEAR FROM date.date) = 2023
GROUP BY TO_CHAR(date.date, 'Month');

/**Query 2**/
SELECT 
    CASE 
        WHEN sibling_count = 1 THEN '0'
        WHEN sibling_count = 2 THEN '1'
        WHEN sibling_count = 3 THEN '2'
    END AS "No of Siblings",
    SUM(counter.sibling_count) AS "No of Students"
FROM (
    SELECT COUNT(*) AS sibling_count
    FROM student
    GROUP BY sibling_id
) AS counter
/*WHERE counter.sibling_count = 4*/

GROUP BY "No of Siblings"
ORDER BY "No of Siblings";

/**Query 3**/
SELECT 
i.instructor_id AS "Instructor ID", 
first_name AS "First Name", 
last_name AS "Last Name", 
COUNT(*) AS "No of Lessons"
FROM instructor i 
LEFT JOIN person p ON i.person_id = p.person_id
LEFT JOIN lesson l ON i.instructor_id = l.instructor_id
LEFT JOIN date d ON l.date_id = d.date_id
WHERE EXTRACT(MONTH FROM d.date) = EXTRACT(MONTH FROM current_date) /*DATE '2023-02-10'*/
GROUP BY i.instructor_id,first_name,last_name
HAVING COUNT(*) > 2
ORDER BY "No of Lessons" DESC;

/**Query 4**/
SELECT 
TO_CHAR(d.date, 'Day') AS "Day", 
genre AS "Genre", 
CASE 
WHEN CAST(l.max_nr_of_students AS INTEGER) - COUNT(*) = 0 THEN 'No seats'
WHEN CAST(l.max_nr_of_students AS INTEGER) - COUNT(*) > 0 AND CAST(l.max_nr_of_students AS INTEGER) - COUNT(*) <= 2 THEN '1 or 2 seats'
WHEN CAST(l.max_nr_of_students AS INTEGER) - COUNT(*) > 2 THEN 'Many seats'
END AS "No of free seats"
FROM lesson l
LEFT JOIN date d ON l.date_id = d.date_id
LEFT JOIN target_genre t ON l.target_genre_id = t.target_genre_id
LEFT JOIN student_lesson s ON l.lesson_id = s.lesson_id
WHERE t.target_genre_id IS NOT NULL 
AND EXTRACT(WEEK FROM d.date) = EXTRACT(WEEK FROM current_date) + 1 /*DATE '2023-02-10', '2023-02-03'*/
GROUP BY TO_CHAR(d.date, 'Day'), genre, EXTRACT(DAY FROM d.date), l.max_nr_of_students
ORDER BY EXTRACT(DAY FROM d.date);

/**For Historical - SoundgoodSelect**/
SELECT DISTINCT
CONCAT(p.first_name, ' ', p.last_name) AS Name,
p.email,
CASE 
WHEN max_nr_of_students = '1' THEN 'Individual'
WHEN max_nr_of_students > '1' AND l.target_genre_id IS NULL THEN 'Group'
WHEN l.target_genre_id IS NOT NULL THEN 'Ensemble' 
END AS lesson_type,
tg.genre AS genre,
CASE
WHEN max_nr_of_students = '1' THEN it.name
WHEN max_nr_of_students > '1' AND l.target_genre_id IS NULL THEN it.name
WHEN l.target_genre_id IS NOT NULL THEN '' 
END AS instrument,
CASE 
WHEN stl.rule_id IS NULL THEN ps.price
WHEN stl.rule_id IS NOT NULL THEN (ps.price * (100 - r.rule_value)) / 100
END AS lesson_price
FROM lesson l 
LEFT JOIN target_genre tg ON l.target_genre_id = tg.target_genre_id
LEFT JOIN lesson_instrument li ON l.lesson_id = li.lesson_id
LEFT JOIN instrument_type it ON li.instrument_type_id = it.instrument_type_id
LEFT JOIN student_lesson stl ON l.lesson_id = stl.lesson_id
LEFT JOIN student s ON stl.student_id = s.student_id 
LEFT JOIN person p ON s.person_id = p.person_id
LEFT JOIN price_scheme ps ON l.price_scheme_id = ps.price_scheme_id
LEFT JOIN rule r ON stl.rule_id = r.rule_id
WHERE s.student_id IS NOT NULL;
