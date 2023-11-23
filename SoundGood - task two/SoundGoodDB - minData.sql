INSERT INTO person (person_number,first_name,last_name,phone_number,email,address_id)
VALUES
  (197165231944,'Emily','Head','+46242614672','emily_head@outlook.org',2),
  (201828547394,'Yuri','Hall','+46418249256','y.hall@google.se',2),
  (201354343810,'Bethany','Saunders','+46944863461','saunders-bethany4794@protonmail.edu',6),
  (201909145057,'Aladdin','Holland','+46325086767','a_holland@hotmail.edu',9),
  (199365904348,'Simone','Rodriguez','+46716626201','s.rodriguez1581@aol.couk',5),
  (201606366648,'Sarah','Hobbs','+46675634893','h-sarah@hotmail.ca',20),
  (194982321108,'Melvin','Delacruz','+46706585842','melvin.delacruz@protonmail.ca',19),
  (199911192884,'Daphne','Gates','+46038377496','gates_daphne7466@aol.ca',17),
  (200601549247,'Dylan','Whitaker','+46935565252','d-whitaker1544@aol.org',17),
  (201082081193,'Dacey','Lott','+46056448793','dacey.lott5362@aol.com',17),

  (197817817278,'Kimberley','Dale','+46875664494','k_dale@google.net',4),
  (199692952552,'Charlotte','Gilmore','+46221917171','g_charlotte@outlook.se',8),
  (199146201127,'Timon','Mills','+46341527160','millstimon@protonmail.ca',3),
  (196036870674,'Hall','Cook','+46851764374','chall9264@hotmail.se',11),
  (195532330100,'Inez','Schroeder','+46503756074','schroederinez@yahoo.se',1),
  (199799038509,'Christen','Mills','+46565894182','m-christen@icloud.org',13),
  (196074517071,'Sandra','Whitley','+46653335454','sandra.whitley991@google.se',14),
  (197916388428,'Jason','Sweet','+46950661966','jsweet1704@aol.ca',17),

  (199015871505,'Ronan','Summers','+46011279678','summers_ronan@protonmail.se',15),
  (197014230640,'Jasper','Mccormick','+46297740626','j_mccormick5455@yahoo.edu',18);

INSERT INTO address (street,zip,city)
VALUES
  ('394-9789 Magna Ave',11782,'Stockholm'),
  ('3008 Mollis Road',15033,'Stockholm'),
  ('233-465 In, Av.',10345,'Stockholm'),
  ('635-955 Vestibulum Rd.',14972,'Stockholm'),
  ('703-3302 Ullamcorper, Av.',14238,'Stockholm'),
  ('P.O. Box 532, 3539 Lorem Rd.',12341,'Stockholm'),
  ('Ap #366-5050 Class St.',12238,'Stockholm'),
  ('Ap #437-7473 Cras Rd.',10390,'Stockholm'),
  ('831 Ridiculus Road',15785,'Stockholm'),
  ('Ap #114-8941 Mollis Avenue',15358,'Stockholm'),
  ('Ap #269-8515 Phasellus St.',10955,'Stockholm'),
  ('898-4497 Eu, Rd.',13513,'Stockholm'),
  ('490-7152 Magna. St.',12533,'Stockholm'),
  ('Ap #104-7717 Sociis Road',10464,'Stockholm'),
  ('Ap #200-451 Nibh St.',15934,'Stockholm'),
  ('997-9571 Facilisis Road',14305,'Stockholm'),
  ('Ap #265-5416 A, St.',11006,'Stockholm'),
  ('Ap #549-3512 Eu Rd.',13371,'Stockholm'),
  ('751-3204 Nulla Av.',15914,'Stockholm'),
  ('Ap #430-5481 Libero Street',11995,'Stockholm');

INSERT INTO contact_person (person_id,relationship)
VALUES
  (11,'Father'),
  (12,'Friend'),
  (13,'Mother'),
  (14,'Father'),
  (15,'Aunt'),
  (16,'Grandfather'),
  (17,'Cousin'),
  (18,'Mother');

INSERT INTO student (person_id,contact_person_id,sibling_id)
VALUES
  (1,1,1),
  (2,1,1),
  (3,2,2),
  (4,3,3),
  (5,4,4),
  (6,5,5),
  (7,6,6),
  (8,8,7),
  (9,8,7),
  (10,8,7);

INSERT INTO instructor (person_id,ensemble_qualified)
VALUES
  (19,TRUE),
  (20,TRUE);


INSERT INTO instrument (brand,instrument_type_id)
VALUES
  ('Yamaha',1),
  ('Roland',2),
  ('Gibson',3),
  ('Pearl',4),
  ('Martin',1);

INSERT INTO instrument_type (name)
VALUES
  ('Piano'),
  ('Guitar'),
  ('Violin'),
  ('Drums');

INSERT INTO instrument_for_rental (instrument_id,student_id,date_of_rental,date_to_return)
VALUES
  (1,1,'2022-10-20 08:04','2023-10-20 08:04'),
  (3,1,'2022-11-22 21:04','2023-11-22 21:04'),
  (4,6,'2022-12-22 14:04','2023-12-22 14:04');

INSERT INTO room (room_name)
VALUES
  ('Beethoven'),
  ('Mozart'),
  ('Bach'),
  ('Chopin'),
  ('Vivaldi');

INSERT INTO target_genre (genre)
VALUES
  ('Pop'),
  ('Rock'),
  ('Classical'),
  ('Jazz'),
  ('Blues');

INSERT INTO skill_level(level)
VALUES
  ('beginner'),
  ('intermediate'),
  ('advanced');

INSERT INTO rules(rental_limit, lease_period, time) 
VALUES ('2','12 months', '2023-11-22 21:04');

INSERT INTO price_scheme(beginner_price, intermediate_price, advanced_price, individual_price, group_price, ensemble_price, instrument_rental, sibling_discount, instructor_salary_percentage, time)
VALUES ('100', '100', '150', '200', '150', '150', '50', '10', '60', '2023-11-12 21:09');


/****************kvar att fylla*****************/

INSERT INTO date (date)
VALUES
  ();

INSERT INTO instructor_date (instructor_id,date_id)
VALUES
  ();

INSERT INTO lesson (min_nr_of_students, max_nr_of_students,time,instructor_id,target_genre_id,room_id)
VALUES
  (2,10,'2023-11-22 21:04',1,1,1);

INSERT INTO student_instrument (student_id,skill_level_id,instrument_type_id)
VALUES
  ();

INSERT INTO student_lesson (student_id,lesson_id)
VALUES
  ();

INSERT INTO instructor_instrument (instructor_type_id,skill_level_id,instrument_type_id)
VALUES
  ();

INSERT INTO lesson_instrument (instrument_type_id,lesson_id,skill_level_id)
VALUES
  ();
