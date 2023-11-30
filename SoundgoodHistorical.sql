CREATE TABLE "lessons" (
    lessons_id SERIAL PRIMARY KEY,
    student_name varchar(100) NOT NULL,
    student_email varchar(100) NOT NULL,
    lesson_id INT NOT NULL,
    lesson_type varchar(50) NOT NULL,
    genre varchar(50) UNIQUE,
    instrument varchar(50)
);

INSERT INTO lessons (student_name,student_email,lesson_id,lesson_type,genre,instrument)
VALUES

;
