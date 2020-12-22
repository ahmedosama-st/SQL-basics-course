create table courses2(
    CourseId int unsigned not null auto_increment primary key,
    title varchar(25) not null,
    StudentId int unsigned not null,
    InstructorId int unsigned not null
);

create table students2(
    StudentId int unsigned not null auto_increment primary key,
    name varchar(25) not null
);

create table instructors2(
    InstructorId int unsigned not null auto_increment primary key,
    name varchar(25) not null
);

alter table courses2 add foreign key (StudentId) references students2(StudentId) on delete cascade;
alter table courses2 add foreign key (InstructorId) references instructors2(InstructorId) on delete cascade;