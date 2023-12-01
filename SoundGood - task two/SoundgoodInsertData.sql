/*  IV1351 Data Storage Paradigms, project - Fatima Mohammad Ali, Mehrdad Vafaee  */

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

INSERT INTO person (person_number,first_name,last_name,phone_number,email,address_id)
VALUES
  (200512189821,'Emily','Head','+46242614672','emily_head@outlook.org',2),
  (201803157634,'Yuri','Hall','+46418249256','y.hall@google.se',2),
  (200201298745,'Bethany','Saunders','+46944863461','saunders-bethany4794@protonmail.edu',6),
  (201512041023,'Aladdin','Holland','+46325086767','a_holland@hotmail.edu',9),
  (200908302367,'Simone','Rodriguez','+46716626201','s.rodriguez1581@aol.couk',5),
  (201109142567,'Sarah','Hobbs','+46675634893','h-sarah@hotmail.ca',20),
  (200704267891,'Melvin','Delacruz','+46706585842','melvin.delacruz@protonmail.ca',19),
  (201210183456,'Daphne','Gates','+46038377496','gates_daphne7466@aol.ca',17),
  (200306091234,'Dylan','Whitaker','+46935565252','d-whitaker1544@aol.org',17),
  (201909121998,'Dacey','Lott','+46056448793','dacey.lott5362@aol.com',17),

  (197804152345,'Kimberley','Dale','+46875664494','k_dale@google.net',4),
  (198512071234,'Charlotte','Gilmore','+46221917171','g_charlotte@outlook.se',8),
  (196903281987,'Timon','Mills','+46341527160','millstimon@protonmail.ca',3),
  (197211102345,'Hall','Cook','+46851764374','chall9264@hotmail.se',11),
  (198709042367,'Inez','Schroeder','+46503756074','schroederinez@yahoo.se',1),
  (195612301234,'Christen','Mills','+46565894182','m-christen@icloud.org',13),
  (196510182567,'Sandra','Whitley','+46653335454','sandra.whitley991@google.se',14),
  (198008092345,'Jasy','Sweet','+46950661966','jsweet1704@aol.ca',17),

  (199002142367,'Ronan','Summers','+46011279678','summers_ronan@protonmail.se',15),
  (197306091234,'Jasper','Mccormick','+46297740626','j_mccormick5455@yahoo.edu',18);



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

INSERT INTO instrument_type (name)
VALUES
  ('Piano'),
  ('Guitar'),
  ('Violin'),
  ('Drums');


INSERT INTO instrument (brand,instrument_type_id)
VALUES
  ('Yamaha',1),
  ('Roland',2),
  ('Gibson',3),
  ('Pearl',4),
  ('Martin',1);


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

INSERT INTO rule(rule_value, description) 
VALUES 
(10, 'sibling_discount'),
(2, 'instrument_limit'),
(12, 'lease_period'),
(75, 'instructor_salaray_precentage');

INSERT INTO price_scheme(beginner_price, intermediate_price, advanced_price, individual_price, group_price, ensemble_price, instrument_rental, sibling_discount, instructor_salary_percentage, time)
VALUES 
  ('100', '100', '150', '200', '150', '150', '50', '11', '61', '2023-11-12 21:09'),
  ('100', '100', '150', '200', '150', '150', '50', '10', '60', '2023-11-12 21:11');

INSERT INTO date (date)
VALUES
('2023-02-10'),
('2023-02-15'),
('2023-02-17'),
('2023-02-22'),
('2023-02-24'),
('2023-02-27'),
('2023-03-01'),
('2023-03-03');

INSERT INTO instructor_date (instructor_id,date_id)
VALUES
  (1,1),
  (1,2),
  (1,3),
  (1,4),
  (1,5),
  (1,6),
  (1,7),
  (1,8),
  (2,1),
  (2,2),
  (2,3),
  (2,4);

INSERT INTO lesson (min_nr_of_students, max_nr_of_students,date_id,start,finish,instructor_id,target_genre_id,room_id,skill_level_id)
VALUES
  (5,10,1,'10:00','12:00',1,1,1,1),
  (1,1,1,'12:00','14:00',1,NULL,2,1),
  (1, 1, 2, '09:00', '11:00', 1, NULL, 3,1),
  (3, 6, 3, '13:00', '15:00', 1, NULL, 4,1),
  (2, 6, 4, '08:30', '10:30', 1, 2, 3,3),
  (1, 1, 5, '11:30', '13:30', 1, NULL, 2,2),
  (1, 1, 6, '09:45', '11:45', 1, NULL, 3,1),
  (2, 6, 6, '12:15', '14:15', 1, 2, 4, 2),
  (1, 1, 1, '08:00', '10:00', 2, NULL, 1,1),
  (2, 6, 2, '10:30', '12:30', 1, 1, 2,1),
  (1, 1, 3, '11:00', '13:00', 2, NULL, 3,2),
  (1, 3, 4, '13:30', '15:30', 2, NULL, 4,2)
  (1, 1, 7, '13:30', '15:30', 2, NULL, 4,2),
  (1, 1, 8, '08:30', '10:30', 1, NULL, 3,2)
  (1,2,3,'10:00','12:00',2,5,2,1);


INSERT INTO student_instrument (student_id,skill_level_id,instrument_type_id)
VALUES
  (1,1,1),
  (1,1,2),
  (2,1,2),
  (3,1,3),
  (3,1,2),
  (4,1,4),
  (5,2,1),
  (5,2,2),
  (6,2,2),
  (6,1,4),
  (7,3,3),
  (8,2,4),
  (8,2,2),
  (9,2,1),
  (9,3,2),
  (9,3,3),
  (10,2,2),
  (10,3,3),
  (10,3,4);

INSERT INTO student_lesson (student_id,lesson_id)
VALUES
  (1,2),
  (2,3),
  (3,4),
  (1,4),
  (2,4),
  (9,5),
  (10,5),
  (7,5),
  (5,6),
  (4,7),
  (5,8),
  (6,8),
  (8,8),
  (6,9),
  (1,10),
  (2,10),
  (3,10),
  (4,10),
  (6,10),
  (9,11),
  (10,12),
  (9,12),
  (3,15),
  (4,15);


INSERT INTO instructor_instrument (instructor_id,skill_level_id,instrument_type_id)
VALUES
  (1,3,1),
  (1,3,2),
  (1,3,3),
  (1,3,4),
  (2,2,1),
  (2,2,2);

INSERT INTO lesson_instrument (instrument_type_id,lesson_id)
VALUES
  (1,2),
  (2,3),
  (2,4),
  (3,5),
  (1,5),
  (4,5),
  (1,6),
  (4,7),
  (1,8),
  (2,8),
  (4,8),
  (4,9),
  (1,10),
  (2,10),
  (3,10),
  (4,10),
  (1,11),
  (2,12);
