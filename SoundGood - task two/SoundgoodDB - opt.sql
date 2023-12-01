/*  IV1351 Data Storage Paradigms, project - Fatima Mohammad Ali, Mehrdad Vafaee  */

CREATE TABLE "person" (
  person_id SERIAL PRIMARY KEY,
  person_number varchar(12) UNIQUE NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  phone_number varchar(12) UNIQUE NOT NULL,
  email varchar(100) UNIQUE NOT NULL,
  address_id INT NOT NULL,
  FOREIGN KEY(address_id) REFERENCES address(address_id) ON DELETE SET NULL
);

CREATE TABLE "address" (
  address_id SERIAL PRIMARY KEY,
  street varchar(100) NOT NULL,
  zip varchar(5) NOT NULL,
  city varchar(50) NOT NULL
);

CREATE TABLE "instructor" (
  instructor_id SERIAL PRIMARY KEY,
  person_id INT UNIQUE NOT NULL,
  ensemble_qualified boolean NOT NULL,
  rule_id INT NOT NULL,
  FOREIGN KEY(person_id) REFERENCES person(person_id) ON DELETE CASCADE,
  FOREIGN KEY(rule_id) REFERENCES rule(rule_id) ON DELETE CASCADE
);

CREATE TABLE "contact_person" (
  contact_person_id SERIAL PRIMARY KEY,
  person_id INT UNIQUE NOT NULL,
  relationship varchar(50) NOT NULL,
  FOREIGN KEY(person_id) REFERENCES person(person_id) ON DELETE CASCADE
);

CREATE TABLE "student" (
  student_id SERIAL PRIMARY KEY,
  person_id INT UNIQUE NOT NULL,
  contact_person_id INT NOT NULL,
  sibling_id INT NOT NULL,
  FOREIGN KEY(person_id) REFERENCES person(person_id) ON DELETE CASCADE,
  FOREIGN KEY(contact_person_id) REFERENCES contact_person(contact_person_id) ON DELETE SET NULL
);


CREATE TABLE "skill_level" (
  skill_level_id SERIAL PRIMARY KEY,
  level varchar(20) UNIQUE NOT NULL
);


CREATE TABLE "instrument_type" (
  instrument_type_id SERIAL PRIMARY KEY,
  name varchar(50) UNIQUE NOT NULL,
  instrument_rental_price INT NOT NULL
);

CREATE TABLE "target_genre" (
  target_genre_id SERIAL PRIMARY KEY,
  genre varchar(50) UNIQUE NOT NULL
);

CREATE TABLE "room" (
  room_id SERIAL PRIMARY KEY,
  room_name varchar(20) UNIQUE NOT NULL
);

CREATE TABLE "date" (
  date_id SERIAL PRIMARY KEY, 
  date DATE UNIQUE NOT NULL
);

CREATE TABLE "instructor_date" (
  instructor_id INT,
  date_id INT,
  PRIMARY KEY(instructor_id, date_id),
  FOREIGN KEY(instructor_id) REFERENCES instructor(instructor_id) ON DELETE CASCADE,
  FOREIGN KEY(date_id) REFERENCES date(date_id) ON DELETE CASCADE
);

CREATE TABLE "price_scheme" (
  price_scheme_id SERIAL PRIMARY KEY,
  lesson_type varchar(50) NOT NULL, 
  skill_level_id INT NOT NULL,
  FOREIGN KEY(skill_level_id) REFERENCES skill_level(skill_level_id) ON DELETE SET NULL,
  price INT NOT NULL
);

CREATE TABLE "rule"(
  rule_id SERIAL PRIMARY KEY,
  rule_value INT NOT NULL, 
  description varchar(50) NOT NULL,
);

CREATE TABLE "lesson" (
  lesson_id SERIAL PRIMARY KEY,
  min_nr_of_students varchar(5) NOT NULL,
  max_nr_of_students varchar(5) NOT NULL,
  start varchar(10) NOT NULL,
  finish varchar(10) NOT NULL,
  instructor_id INT NOT NULL,
  target_genre_id INT NOT NULL,
  room_id INT NOT NULL,
  date_id INT NOT NULL,
  price_scheme_id INT NOT NULL,
  FOREIGN KEY(instructor_id) REFERENCES instructor(instructor_id) ON DELETE SET NULL,
  FOREIGN KEY(target_genre_id) REFERENCES target_genre(target_genre_id) ON DELETE SET NULL,
  FOREIGN KEY(room_id) REFERENCES room(room_id) ON DELETE SET NULL,
  FOREIGN KEY(date_id) REFERENCES date(date_id) ON DELETE SET NULL,
  FOREIGN KEY(price_scheme_id) REFERENCES price_scheme(price_scheme_id) ON DELETE RESTRICT

  );

CREATE TABLE "instrument" (
  instrument_id SERIAL PRIMARY KEY,
  brand varchar(50) NOT NULL,
  instrument_type_id INT NOT NULL,
  FOREIGN KEY(instrument_type_id) REFERENCES instrument_type(instrument_type_id) ON DELETE CASCADE
); 

CREATE TABLE "instrument_for_rental" (
  instrument_for_rental_id SERIAL PRIMARY KEY,
  date_of_rental DATE NOT NULL,
  date_to_return DATE NOT NULL,
  student_id INT NOT NULL,
  instrument_id INT NOT NULL,
  rule_id INT NOT NULL,
  FOREIGN KEY(student_id) REFERENCES student(student_id) ON DELETE CASCADE,
  FOREIGN KEY(instrument_id) REFERENCES instrument(instrument_id) ON DELETE CASCADE,
  FOREIGN KEY(rule_id) REFERENCES rule(rule_id) ON DELETE CASCADE

);

CREATE TABLE "student_instrument" (
  student_instrument_id SERIAL PRIMARY KEY,
  student_id INT NOT NULL,
  skill_level_id INT NOT NULL,
  instrument_type_id INT NOT NULL,
  FOREIGN KEY(student_id) REFERENCES student(student_id) ON DELETE CASCADE,
  FOREIGN KEY(skill_level_id) REFERENCES skill_level(skill_level_id) ON DELETE SET NULL,
  FOREIGN KEY(instrument_type_id) REFERENCES instrument_type(instrument_type_id) ON DELETE CASCADE
);

CREATE TABLE "student_lesson" (
  student_id INT,
  lesson_id INT,
  rule_id INT,
  PRIMARY KEY(student_id, lesson_id),
  FOREIGN KEY(student_id) REFERENCES student(student_id) ON DELETE CASCADE,
  FOREIGN KEY(lesson_id) REFERENCES lesson(lesson_id) ON DELETE CASCADE,
  FOREIGN KEY(rule_id) REFERENCES rule(rule_id) ON DELETE CASCADE
);

CREATE TABLE "instructor_instrument" (
  instructor_instrument_id SERIAL PRIMARY KEY,
  instructor_id INT NOT NULL,
  skill_level_id INT NOT NULL,
  instrument_type_id INT NOT NULL,
  FOREIGN KEY(instructor_id) REFERENCES instructor(instructor_id) ON DELETE CASCADE,
  FOREIGN KEY(skill_level_id) REFERENCES skill_level(skill_level_id) ON DELETE SET NULL,
  FOREIGN KEY(instrument_type_id) REFERENCES instrument_type(instrument_type_id) ON DELETE CASCADE
);

CREATE TABLE "lesson_instrument"(
  instrument_type_id INT,
  lesson_id INT,
  PRIMARY KEY(instrument_type_id, lesson_id),
  FOREIGN KEY(instrument_type_id) REFERENCES instrument_type(instrument_type_id) ON DELETE CASCADE,
  FOREIGN KEY(lesson_id) REFERENCES lesson(lesson_id) ON DELETE CASCADE,
);