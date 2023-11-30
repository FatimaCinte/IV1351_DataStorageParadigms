/**Uppgift 1**/
SELECT TO_CHAR(d.date, 'Month') AS month, 
		COUNT(l.lesson_id) AS total,
		COUNT(CASE WHEN l.max_nr_of_students = '1' THEN 1 END) AS indv,
		COUNT (CASE WHEN l.max_nr_of_students > '1' AND l.target_genre_id IS NULL THEN 1 END) AS grp,
		COUNT (CASE WHEN l.target_genre_id IS NOT NULL THEN 1 END) AS ens
FROM lesson AS l INNER JOIN date AS d ON l.date_id = d.date_id
WHERE EXTRACT(YEAR FROM d.date) = 2023
GROUP BY TO_CHAR(d.date,'Month')
ORDER BY month;

SELECT TO_CHAR(date.date, 'Month') AS "Month", 
COUNT(*) AS "Total", 
COUNT(*) filter (where max_nr_of_students = '1') AS "Individual",
COUNT(*) filter (where max_nr_of_students > '1' AND target_genre_id IS NULL) AS "Group",
COUNT(*) filter (where target_genre_id IS NOT NULL) AS "Ensemble"
FROM lesson JOIN date ON lesson.date_id = date.date_id
WHERE EXTRACT(YEAR FROM date.date) = 2023
GROUP BY TO_CHAR(date.date, 'Month');

/**2**/
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

/**Uppgift 3**/
SELECT 
i.instructor_id AS "Instructor ID", 
first_name AS "First Name", 
last_name AS "Last Name", 
COUNT(*) AS "No of Lessons"
FROM instructor i 
LEFT JOIN person p ON i.person_id = p.person_id
LEFT JOIN lesson l ON i.instructor_id = l.instructor_id
GROUP BY i.instructor_id,first_name,last_name
HAVING COUNT(*) > 2;

/**Uppgift 4**/

SELECT 
TO_CHAR(d.date, 'Day') AS "Day", 
genre AS "Genre", 
CASE 
WHEN CAST(l.max_nr_of_students AS INTEGER) - COUNT(*) = 0 THEN 'No Seats'
WHEN CAST(l.max_nr_of_students AS INTEGER) - COUNT(*) > 0 AND CAST(l.max_nr_of_students AS INTEGER) - COUNT(*) <= 2 THEN '1 or 2 Seats'
WHEN CAST(l.max_nr_of_students AS INTEGER) - COUNT(*) > 2 THEN 'Many Seats'
END
FROM lesson l
LEFT JOIN date d ON l.date_id = d.date_id
LEFT JOIN target_genre t ON l.target_genre_id = t.target_genre_id
LEFT JOIN student_lesson s ON l.lesson_id = s.lesson_id
WHERE t.target_genre_id IS NOT NULL 
AND EXTRACT(WEEK FROM d.date) = EXTRACT(WEEK FROM current_date) + 1 /*DATE '2023-02-10', '2023-02-03'*/
GROUP BY TO_CHAR(d.date, 'Day'), genre, EXTRACT(DAY FROM d.date), l.max_nr_of_students
ORDER BY EXTRACT(DAY FROM d.date);

/**SoundgoodSelect**/
SELECT DISTINCT
l.lesson_id,
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
sl.level AS skill_level
FROM lesson l 
LEFT JOIN target_genre tg ON l.target_genre_id = tg.target_genre_id
LEFT JOIN lesson_instrument li ON l.lesson_id = li.lesson_id
LEFT JOIN instrument_type it ON li.instrument_type_id = it.instrument_type_id
LEFT JOIN skill_level sl ON l.skill_level_id = sl.skill_level_id
ORDER BY l.lesson_id;
