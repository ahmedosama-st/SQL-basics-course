# This is the database schema for [lesson 17]()

## Use the following code to get the same database as mine or download index.sql file

---

```sql
create database udemy_clone charset utf8mb4 collate utf8mb4_general_ci;

use udemy_clone;

create table students(
    id int unsigned not null auto_increment primary key,
    first_name varchar(32) not null,
    last_name varchar(32) not null,
    email varchar(50) unique not null,
    password varchar(128) not null
);

create table instructors(
    id int unsigned not null auto_increment primary key,
    first_name varchar(32) not null,
    last_name varchar(32) not null,
    email varchar(50) unique not null,
    password varchar(128) not null
);

create table courses(
    id int unsigned not null  auto_increment primary key,
    title varchar(32) unique not null,
    description varchar(255) not null,
    price decimal(4, 2) not null,
    instructor_id int unsigned not null
);

alter table courses add foreign key (instructor_id) references instructors(id) on delete cascade;

create table course_student(
    id int unsigned not null auto_increment primary key,
    student_id int unsigned not null,
    course_id int unsigned not null
);

alter table course_student add foreign key (course_id) references courses(id) on delete cascade;
alter table course_student add foreign key (student_id) references students(id) on delete cascade;

insert into
    students(first_name, last_name, email, password)
values
    ('ammar', 'mohamed', 'ammar.mohamed@gmail.com', '123456789'),
    ('mahmoud', 'gamal', 'mahmoud_gamal9292@gmail.com', 'welcomehome'),
    ('ahmed', 'ali', 'ali.ahmed_191@gmail.com', 'myperfectpassword'),
    ('esmail', 'elsayed', 'esmail_elsayed28@gmail.com', 'nonecanhackmypassword')
;

insert into
    instructors(first_name, last_name, email, password)
values
    ('ahmed', 'osama', 'ahmedosama@sectheater.org', 'secret'),
    ('mohamed', 'osama', 'mohamedosama@sectheater.org', 'secret')
;

insert into
    courses(title, description, price, instructor_id)
values
    ('web development', 'a 170 hour course about web development', 80.00, 1),
    ('database management', 'a 15 hour course about managing your database', 40.00, 1),
    ('embedded systems', 'a 28 hour course about embedded systems', 60.00, 1),
    ('advanced laravel', 'a 25 hour course about advanced concepts in laravel', 10.00, 2),
    ('micro services', 'an 8 hour course about microservices', 10.00, 2),
    ('vueJS from zero to mastery', 'an 25 hour course everything in VueJS', 75.00, 2)
;

insert into
    course_student(student_id, course_id)
values
    (1, 1),
    (1, 4),
    (2, 2),
    (2, 4),
    (3, 4),
    (3, 1),
    (4, 1),
    (2, 1),
    (2, 5),
    (4, 6),
    (1, 6),
    (1, 5)
;
```
---
## Don't forget to follow us


> [Facebook page](https://bit.ly/39dTot4)

> [Facebook group](https://bit.ly/39c5YsH)

> [Telegram channel](https://bit.ly/35Zd41Z)

> [Telegram group](https://bit.ly/361mzOd)

> [Discord](https://bit.ly/39c8Ohw)

> [Youtube](https://bit.ly/2J3v95R)
