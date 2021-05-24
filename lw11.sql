CREATE DATABASE `univesity`;

USE `univesity`;

CREATE TABLE `faculty`
(
	`faculty_id` INT AUTO_INCREMENT NOT NULL,
    `name_faculty` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`faculty_id`)
)
	DEFAULT CHARACTER SET `utf8mb4` /*Установка кодировки таблицы*/
    COLLATE `utf8mb4_unicode_ci`; /*способ, с помощью которого следует упорядовачивать и сравнивать данные БД(способ сортировки)*/
    
CREATE TABLE `group`
(

	`group_id` INT AUTO_INCREMENT NOT NULL,
    `faculty_id` INT NOT NULL,
    `name_group` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`group_id`),
    FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`) ON UPDATE CASCADE ON DELETE CASCADE
)
	DEFAULT CHARACTER SET `utf8mb4`
    COLLATE `utf8mb4_unicode_ci`;
    
CREATE TABLE `students`
(
	`students_id` INT AUTO_INCREMENT NOT NULL,
    `group_id` INT NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `patronymic` VARCHAR(255) NOT NULL,
    `age` INT NOT NULL,
    PRIMARY KEY (`students_id`),
	FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`) ON UPDATE CASCADE ON DELETE CASCADE
)
	DEFAULT CHARACTER SET `utf8mb4`
    COLLATE `utf8mb4_unicode_ci`;
 
INSERT INTO faculty
    (name_faculty)
VALUES
    ('Факультет информатики и вычислительной техники'),
    ('Институт леса и природопользования'),
    ('Институт строительства и архитектуры');
    
INSERT INTO `group`
    (name_group, faculty_id)
VALUES
    ('ПС-13', 1),
    ('ИВТ-12', 1),
    ('ИБ-11', 1),
    
    ('ЛД-13', 2),
    ('ИСиТ-12', 2),
    ('ТЛиДП-11', 2),
    
    ('ИСиТ-13', 3),
    ('СУЗиС-12', 3),
    ('ЗиД-11', 3);
    
INSERT INTO `students`
    (group_id, last_name, first_name, patronymic, age)
VALUES   
(1, 'Зорина', 'Варвара', 'Ивановна', 19),
(1,  'Петрова', 'Вера', 'Макаровна', 18),
(1, 'Демин', 'Тихон', 'Александрович', 17),
(1, 'Казакова', 'Анна', 'Александровна',  19),
(1, 'Игнатов', 'Семён', 'Никитич', 16),

(2, 'Кузин', 'Лепс', 'Сергеевич', 19),
(2,  'Латышев', 'Богдан', 'Александрович', 17),
(2, 'Зайцев', 'Илья', 'Григорьевич', 17),
(2, 'Петров', 'Михаил', 'Егорович',  18),
(2, 'Игнатов', 'Семён', 'Виторович', 18),

(3, 'Зверев', 'Владимир', 'Максимович', 18),
(3,  'Зубкова', 'Аделина', 'Адамовна', 19),
(3, 'Грибов', 'Матвей', 'Романович', 17),
(3, 'Сергеев', 'Игорь', 'Михайлович',  17),
(3, 'Антохин', 'Миша', 'Антонович', 17),

(4, 'Евдокимова', 'Ксения', 'Богдановна', 18),
(4,  'Басова', 'Ксения', 'Сергеевна', 18),
(4, 'Лебедев', 'Тимофей', 'Львович', 19),
(4, 'Сомова', 'Алия', 'Львовна',  17),
(4, 'Сергеев', 'Тимофей', 'Артёмович', 17),

(5, 'Соловьев', 'Дмитрий', 'Александрович', 18),
(5,  'Абрамов', 'Кирилл', 'Денисович', 17),
(5, 'Некрасова', 'Каролина', 'Ярославовна', 18),
(5, 'Сергеев', 'Дмитрий', 'Иванович',  18),
(5, 'Павлова', 'Милана', 'Марковна', 18),

(6, 'Сахаров', 'Лев', 'Саввич', 20),
(6,  'Максимов', 'Сергей', 'Павлович', 19),
(6, 'Карасева', 'Анастасия', 'Дмитриевна', 22),
(6, 'Никулина', 'Кира', 'Леоновна',  18),
(6, 'Наумова', 'Елизавета', 'Михайловна', 18),

(7,'Зуева', 'Лидия', 'Марковна', 18),
(7, 'Попов', 'Николай', 'Максимович', 18),
(7, 'Виноградова', 'Алёна', 'Артёмовна', 17),
(7, 'Попов', 'Александр', 'Романович',  17),
(7, 'Павлова', 'София', 'Степановна', 19),

(8,'Жукова', 'Кристина', 'Михайловна', 18),
(8, 'Дубровина', 'Елизавета', 'Павловна', 18),
(8, 'Антонова', 'Ксения', 'Ивановна', 20),
(8, 'Кузнецова', 'Мария', 'Михайловна',  18),
(8, 'Сергеев', 'Матвей', 'Сергеевич', 17),

(9,'Юдин', 'Владимир', 'Максимович', 17),
(9, 'Попов', 'Матвей', 'Дмитриевич', 19),
(9, 'Григорий', 'Лепс', 'Виторович', 18),
(9, 'Джекман', 'Хью', 'Вовивич',  19),
(9, 'Медведев', 'Паддингтон', 'Михайлович', 19);

    /*Получение всех19-летних*/
 SELECT
	`last_name`,
    `first_name`,
    `patronymic`,
	`age`
  FROM
	`students`
  WHERE
	`age` = 19;

/*Получение студентов по группе*/
SELECT
	`last_name`,
	`first_name`,
	`patronymic`,
	`age`,
    `name_group`
FROM
	`students`
JOIN
	`group`
ON
	`students`.`group_id` = `group`.`group_id`
WHERE
	`students`.`group_id` = 9;
    
/*Получение студентов по факультету*/
SELECT
	`last_name`,
	`first_name`,
	`patronymic`,
	`age`,
    `name_faculty`,
    `name_group`
FROM 
	`students`
JOIN
	`group`
ON
	`group`.`group_id` = `students`.`group_id`
JOIN
	`faculty`
ON
	`faculty`.`faculty_id` = `group`.`faculty_id`    
WHERE
	`faculty`.`faculty_id` = 3;
    
/*Получение информации о конкретном студенте*/
SELECT
	`last_name`,
	`first_name`,
	`patronymic`,
	`age`,
    `name_faculty`,
    `name_group`
FROM
	`faculty`
JOIN
	`group`
ON    
	`group`.`faculty_id` = `faculty`.`faculty_id`
JOIN
	`students`
ON    
	`students`.`group_id` = `group`.`group_id`    
WHERE
	`students`.`students_id` = 45;      
    

 
    