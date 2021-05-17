CREATE DATABASE `univesity`;

USE `univesity`; 

CREATE TABLE `faculty`
(
	`faculty_id` INT AUTO_INCREMENT NOT NULL,
    `name_faculty` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`faculty_id`)
)
	DEFAULT CHARACTER SET `utf8mb4`
    COLLATE `utf8mb4_unicode_ci`;
    
    
CREATE TABLE `group`
(
	`group_id` INT AUTO_INCREMENT NOT NULL,
    `faculty_id` INT NOT NULL,
    `name_group` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`group_id`)
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
    PRIMARY KEY (`students_id`)
)
	DEFAULT CHARACTER SET `utf8mb4`
    COLLATE `utf8mb4_unicode_ci`;
    
 INSERT INTO `faculty` SET `name_faculty` = 'Фкультет информатики и вычислительной техники';
 INSERT INTO `faculty` SET `name_faculty` = 'Институт леса и природопользования';
 INSERT INTO `faculty` SET `name_faculty` = 'Институт строительства и архитектуры';
 
 INSERT INTO `group` SET `faculty_id` = '1', `name_group` = 'ПС-13';
 INSERT INTO `group` SET `faculty_id` = '1', `name_group` = 'ИВТ-12';
 INSERT INTO `group` SET `faculty_id` = '1', `name_group` = 'ИБ-11';
 
 INSERT INTO `group` SET `faculty_id` = '2', `name_group` = 'ЛД-13';
 INSERT INTO `group` SET `faculty_id` = '2', `name_group` = 'ИСиТ-12';
 INSERT INTO `group` SET `faculty_id` = '2', `name_group` = 'ТЛиДП-11';
 
 INSERT INTO `group` SET `faculty_id` = '3', `name_group` = 'ИСиТ-13';
 INSERT INTO `group` SET `faculty_id` = '3', `name_group` = 'СУЗиС-12';
 INSERT INTO `group` SET `faculty_id` = '3', `name_group` = 'ЗиД-11';
 
 INSERT INTO `students` SET `group_id` = '1', `last_name` = 'Зорина', `first_name` = 'Варвара',  `patronymic` = 'Ивановна', `age` = 19;
 INSERT INTO `students` SET `group_id` = '1', `last_name` = 'Петрова', `first_name` = 'Вера',  `patronymic` = 'Макаровна', `age` = 18;
 INSERT INTO `students` SET `group_id` = '1', `last_name` = 'Демин', `first_name` = 'Тихон',  `patronymic` = 'Александрович', `age` = 17;
 INSERT INTO `students` SET `group_id` = '1', `last_name` = 'Казакова', `first_name` = 'Анна',  `patronymic` = 'Александровна', `age` = 19;
 INSERT INTO `students` SET `group_id` = '1', `last_name` = 'Игнатов', `first_name` = 'Семён',  `patronymic` = 'Никитич', `age` = 16;
 
 INSERT INTO `students` SET `group_id` = '2', `last_name` = 'Кузин', `first_name` = 'Лепс',  `patronymic` = 'Сергеевич', `age` = 19;
 INSERT INTO `students` SET `group_id` = '2', `last_name` = 'Латышев', `first_name` = 'Богдан',  `patronymic` = 'Александрович', `age` = 17;
 INSERT INTO `students` SET `group_id` = '2', `last_name` = 'Зайцев', `first_name` = 'Илья',  `patronymic` = 'Григорьевич', `age` = 17;
 INSERT INTO `students` SET `group_id` = '2', `last_name` = 'Петров', `first_name` = 'Михаил',  `patronymic` = 'Егорович', `age` = 18;
 INSERT INTO `students` SET `group_id` = '2', `last_name` = 'Николаев', `first_name` = 'Семён',  `patronymic` = 'Виторович', `age` = 18;
 
 INSERT INTO `students` SET `group_id` = '3', `last_name` = 'Зверев', `first_name` = 'Владимир',  `patronymic` = 'Максимович', `age` = 18;
 INSERT INTO `students` SET `group_id` = '3', `last_name` = 'Зубкова', `first_name` = 'Аделина',  `patronymic` = 'Адамовна', `age` = 19;
 INSERT INTO `students` SET `group_id` = '3', `last_name` = 'Грибов', `first_name` = 'Матвей',  `patronymic` = 'Романович', `age` = 17;
 INSERT INTO `students` SET `group_id` = '3', `last_name` = 'Сергеев', `first_name` = 'Игорь',  `patronymic` = 'Михайлович', `age` = 17;
 INSERT INTO `students` SET `group_id` = '3', `last_name` = 'Сергеев', `first_name` = 'Игорь',  `patronymic` = 'Михайлович', `age` = 17;
 
 INSERT INTO `students` SET `group_id` = '4', `last_name` = 'Евдокимова', `first_name` = 'Ксения',  `patronymic` = 'Богдановна', `age` = 18;
 INSERT INTO `students` SET `group_id` = '4', `last_name` = 'Басова', `first_name` = 'Ксения',  `patronymic` = 'Сергеевна', `age` = 18;
 INSERT INTO `students` SET `group_id` = '4', `last_name` = 'Лебедев', `first_name` = 'Тимофей',  `patronymic` = 'Львович', `age` = 19;
 INSERT INTO `students` SET `group_id` = '4', `last_name` = 'Сомова', `first_name` = 'Алия',  `patronymic` = 'Львовна', `age` = 17;
 INSERT INTO `students` SET `group_id` = '4', `last_name` = 'Сергеев', `first_name` = 'Тимофей',  `patronymic` = 'Артёмович', `age` = 17;
 
 INSERT INTO `students` SET `group_id` = '5', `last_name` = 'Соловьев', `first_name` = 'Дмитрий',  `patronymic` = 'Александрович', `age` = 16;
 INSERT INTO `students` SET `group_id` = '5', `last_name` = 'Абрамов', `first_name` = 'Кирилл',  `patronymic` = 'Денисович', `age` = 17;
 INSERT INTO `students` SET `group_id` = '5', `last_name` = 'Некрасова', `first_name` = 'Каролина',  `patronymic` = 'Ярославовна', `age` = 18;
 INSERT INTO `students` SET `group_id` = '5', `last_name` = 'Сергеев', `first_name` = 'Дмитрий',  `patronymic` = 'Иванович', `age` = 18;
 INSERT INTO `students` SET `group_id` = '5', `last_name` = 'Павлова ', `first_name` = 'Милана',  `patronymic` = 'Марковна', `age` = 18;
 
 INSERT INTO `students` SET `group_id` = '6', `last_name` = 'Сахаров', `first_name` = 'Лев',  `patronymic` = 'Саввич', `age` = 20;
 INSERT INTO `students` SET `group_id` = '6', `last_name` = 'Максимов', `first_name` = 'Сергей',  `patronymic` = 'Павлович', `age` = 19;
 INSERT INTO `students` SET `group_id` = '6', `last_name` = 'Карасева', `first_name` = 'Анастасия',  `patronymic` = 'Дмитриевна', `age` = 22;
 INSERT INTO `students` SET `group_id` = '6', `last_name` = 'Никулина', `first_name` = 'Кира',  `patronymic` = 'Леоновна', `age` = 18;
 INSERT INTO `students` SET `group_id` = '6', `last_name` = 'Наумова', `first_name` = 'Елизавета',  `patronymic` = 'Михайловна', `age` = 18;
 
 INSERT INTO `students` SET `group_id` = '7', `last_name` = 'Зуева', `first_name` = 'Лидия',  `patronymic` = 'Марковна', `age` = 18;
 INSERT INTO `students` SET `group_id` = '7', `last_name` = 'Попов', `first_name` = 'Николай',  `patronymic` = 'Максимович', `age` = 18;
 INSERT INTO `students` SET `group_id` = '7', `last_name` = 'Виноградова', `first_name` = 'Алёна',  `patronymic` = 'Артёмовна', `age` = 17;
 INSERT INTO `students` SET `group_id` = '7', `last_name` = 'Попов', `first_name` = 'Александр',  `patronymic` = 'Романович', `age` = 17;
 INSERT INTO `students` SET `group_id` = '7', `last_name` = 'Павлова', `first_name` = 'София',  `patronymic` = 'Степановна', `age` = 19;
 
 INSERT INTO `students` SET `group_id` = '8', `last_name` = 'Жукова ', `first_name` = 'Кристина',  `patronymic` = 'Михайловна', `age` = 17;
 INSERT INTO `students` SET `group_id` = '8', `last_name` = 'Дубровина ', `first_name` = 'Елизавета',  `patronymic` = 'Павловна', `age` = 18;
 INSERT INTO `students` SET `group_id` = '8', `last_name` = 'Антонова', `first_name` = 'Ксения',  `patronymic` = 'Ивановна', `age` = 20;
 INSERT INTO `students` SET `group_id` = '8', `last_name` = 'Кузнецова ', `first_name` = 'Мария',  `patronymic` = 'Михайловна', `age` = 18;
 INSERT INTO `students` SET `group_id` = '8', `last_name` = 'Сергеев', `first_name` = 'Матвей',  `patronymic` = 'Сергеевич', `age` = 17;
 
 INSERT INTO `students` SET `group_id` = '9', `last_name` = 'Юдин', `first_name` = 'Владимир',  `patronymic` = 'Максимович', `age` = 17;
 INSERT INTO `students` SET `group_id` = '9', `last_name` = 'Попов', `first_name` = 'Матвей',  `patronymic` = 'Дмитриевич', `age` = 19;
 INSERT INTO `students` SET `group_id` = '9', `last_name` = 'Григорий', `first_name` = 'Лепс',  `patronymic` = 'Виторович', `age` = 18;
 INSERT INTO `students` SET `group_id` = '9', `last_name` = 'Джекман', `first_name` = 'Хью',  `patronymic` = 'Вовивич', `age` = 19;
 INSERT INTO `students` SET `group_id` = '9', `last_name` = 'Медведев', `first_name` = 'Паддингтон',  `patronymic` = 'Михайлович', `age` = 19;
    
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
	`students`.`group_id` = 8;
    
/*Получение студентов по факультету*/
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
	`faculty`.`faculty_id` = 2;    
    
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
    

 
    