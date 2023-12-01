CREATE TABLE "lessons" (
    lessons_id SERIAL PRIMARY KEY,
    student_name varchar(100) NOT NULL,
    student_email varchar(100) NOT NULL,
    lesson_type text NOT NULL,
    genre varchar(50),
    instrument varchar(50),
    lesson_price INT NOT NULL
);

INSERT INTO lessons (student_name,student_email,lesson_type,genre,instrument,lesson_price)
VALUES
('Daphne Gates','gates_daphne7466@aol.ca','Ensemble','Rock',' ',270),
('Yuri Hall','y.hall@google.se','Ensemble','Pop',' ',270),
('Aladdin Holland','a_holland@hotmail.edu','Individual',NULL,'Drums',200),
('Simone Rodriguez','s.rodriguez1581@aol.couk','Individual',NULL,'Piano',200),
('Aladdin Holland','a_holland@hotmail.edu','Ensemble','Blues',' ',250),
('Emily Head','emily_head@outlook.org','Group',NULL,'Guitar',225),
('Dacey Lott','dacey.lott5362@aol.com','Ensemble','Rock',' ',279),
('Emily Head','emily_head@outlook.org','Individual',NULL,'Piano',180),
('Sarah Hobbs','h-sarah@hotmail.ca','Ensemble','Pop',' ',300),
('Dylan Whitaker','d-whitaker1544@aol.org','Individual',NULL,'Piano',180),
('Aladdin Holland','a_holland@hotmail.edu','Ensemble','Pop',' ',300),
('Dylan Whitaker','d-whitaker1544@aol.org','Ensemble','Rock',' ',279),
('Yuri Hall','y.hall@google.se','Individual',NULL,'Guitar',180),
('Bethany Saunders','saunders-bethany4794@protonmail.edu','Group',NULL,'Guitar',250),
('Emily Head','emily_head@outlook.org','Ensemble','Pop',' ',270),
('Sarah Hobbs','h-sarah@hotmail.ca','Ensemble','Rock',' ',300),
('Sarah Hobbs','h-sarah@hotmail.ca','Individual',NULL,'Drums',200),
('Dylan Whitaker','d-whitaker1544@aol.org','Group',NULL,'Guitar',225),
('Yuri Hall','y.hall@google.se','Group',NULL,'Guitar',225),
('Melvin Delacruz','melvin.delacruz@protonmail.ca','Ensemble','Rock',' ',310),
('Dacey Lott','dacey.lott5362@aol.com','Group',NULL,'Guitar',225),
('Bethany Saunders','saunders-bethany4794@protonmail.edu','Ensemble','Blues',' ',250),
('Bethany Saunders','saunders-bethany4794@protonmail.edu','Ensemble','Pop',' ',300),
('Simone Rodriguez','s.rodriguez1581@aol.couk','Ensemble','Rock',' ',300);

