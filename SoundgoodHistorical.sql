CREATE TABLE "lessons" (
    lessons_id SERIAL PRIMARY KEY,
    student_name varchar(100) NOT NULL,
    student_email varchar(100) NOT NULL,
    lesson_id INT NOT NULL,
    lesson_type text NOT NULL,
    genre varchar(50) UNIQUE,
    instrument varchar(50),
    lesson_price INT NOT NULL
);

INSERT INTO lessons (student_name,student_email,lesson_id,lesson_type,genre,instrument,lesson_price)
VALUES
('Emily Head', 'emily_head@outlook.org', 2, 'Individual', NULL, 'Piano', 180),
('Yuri Hall', 'y.hall@google.se', 3, 'Individual', NULL, 'Guitar', 180),
('Bethany Saunders', 'saunders-bethany4794@protonmail.edu', 4, 'Group', NULL, 'Guitar', 250),
('Emily Head', 'emily_head@outlook.org', 4, 'Group', NULL, 'Guitar', 225),
('Yuri Hall', 'y.hall@google.se', 4, 'Group', NULL, 'Guitar', 225),
('Dacey Lott', 'dacey.lott5362@aol.com', 5, 'Ensemble', 'Rock',' ', 279),
('Dylan Whitaker', 'd-whitaker1544@aol.org', 5, 'Ensemble', 'Rock',' ', 279),
('Melvin Delacruz', 'melvin.delacruz@protonmail.ca', 5, 'Ensemble', 'Rock',' ', 310),
('Simone Rodriguez', 's.rodriguez1581@aol.couk', 6, 'Individual', NULL, 'Piano', 200),
('Aladdin Holland', 'a_holland@hotmail.edu', 7, 'Individual', NULL, 'Drums', 200),
('Daphne Gates', 'gates_daphne7466@aol.ca', 8, 'Ensemble', 'Rock',' ', 270),
('Sarah Hobbs', 'h-sarah@hotmail.ca', 8, 'Ensemble', 'Rock',' ', 300),
('Simone Rodriguez', 's.rodriguez1581@aol.couk', 8, 'Ensemble', 'Rock',' ', 300),
('Sarah Hobbs', 'h-sarah@hotmail.ca', 9, 'Individual', NULL, 'Drums', 200),
('Aladdin Holland', 'a_holland@hotmail.edu', 10, 'Ensemble', 'Pop',' ', 300),
('Bethany Saunders', 'saunders-bethany4794@protonmail.edu', 10, 'Ensemble', 'Pop',' ', 300),
('Emily Head', 'emily_head@outlook.org', 10, 'Ensemble', 'Pop',' ', 270),
('Sarah Hobbs', 'h-sarah@hotmail.ca', 10, 'Ensemble', 'Pop',' ', 300),
('Yuri Hall', 'y.hall@google.se', 10, 'Ensemble', 'Pop',' ', 270),
('Dylan Whitaker', 'd-whitaker1544@aol.org', 11, 'Individual', NULL, 'Piano', 180),
('Dacey Lott', 'dacey.lott5362@aol.com', 12, 'Group', NULL, 'Guitar', 225),
('Dylan Whitaker', 'd-whitaker1544@aol.org', 12, 'Group', NULL, 'Guitar', 225),
(' ', NULL, 13, 'Individual', NULL, NULL, 200),
(' ', NULL, 14, 'Individual', NULL, NULL, 200),
('Aladdin Holland', 'a_holland@hotmail.edu', 15, 'Ensemble', 'Blues',' ', 250),
('Bethany Saunders', 'saunders-bethany4794@protonmail.edu', 15, 'Ensemble', 'Blues',' ', 250);

