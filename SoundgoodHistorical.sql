CREATE TABLE "lessons" (
    lessons_id SERIAL PRIMARY KEY,
    student_name varchar(100) NOT NULL,
    student_email varchar(100) NOT NULL,
    lesson_id INT NOT NULL,
    lesson_type text NOT NULL,
    genre varchar(50) UNIQUE,
    instrument varchar(50),
    lesson_price varchar(15) NOT NULL /**type INT ?
);

INSERT INTO lessons (student_name,student_email,lesson_id,lesson_type,genre,instrument,lesson_price)
VALUES

;
