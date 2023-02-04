create table timetable (
  id int not null primary key,
  lecture_time varchar(255) 
);

create table subjects (
  id int not null primary key,
  subject_name varchar(255),
  time_id int,
  foreign key (time_id)
  references timetable(id)
);

CREATE TABLE COURSES (
  ID INT NOT NULL PRIMARY KEY,
  SUBJECT_ID INT,
  COURSE_NAME VARCHAR(255),
  foreign key(SUBJECT_ID)
  references subjects(id)
);

create table secondhouse (
  id int not null primary key,
  houseadress varchar(255),
  housenumber varchar(50)
);


CREATE TABLE LECTORS(
  id int primary key not null,
  first_name varchar(255),
  last_name varchar(255),
  personal_id varchar(255),
  email varchar(255),
  adress varchar(255),
  birthdate varchar(255),
  gender varchar(10),
  rank varchar(255),
  payment_adress varchar(255),
  subject_id int  ,
  second_house_id int,
  foreign key(subject_id)
  references subjects(id),
  foreign key(second_house_id)
  references secondhouse(id)
);
  
create table students (
  id int primary key not null,
  first_name varchar(255),
  last_name varchar(255),
  personal_id varchar(255),
  email varchar(255),
  adress varchar(255),
  birthdate varchar(255),
  gender varchar(10),
  second_house_id int,
  foreign key(second_house_id)
  references secondhouse(id)
 
);

create table students_time (
  id int not null primary key,
  students_id int,
  timetable_id int,
  foreign key (timetable_id)
  references timetable(id),
  foreign key (students_id)
  references students(id)
  
  
);

 create table manager (
  id int not null primary key,
  name varchar(255),
  last_name varchar(255)
);


insert into timetable (id, lecture_time)
values(1, '4/2/2023 13:00');

insert into timetable (id, lecture_time)
values(2, '4/2/2023 14:00');

insert into subjects (id, subject_name, time_id)
values(1,'computer science', 1);

insert into subjects (id, subject_name, time_id)
values(2,'math', 2);
insert into subjects (id, subject_name, time_id)
values(3,'architecture', 2);

insert into COURSES(id, SUBJECT_ID, COURSE_NAME)
values (1,1, 'Skilwill');

insert into secondhouse(id, houseadress, housenumber)
values( 1, 'batumi bouelvard.str', '69');

insert into LECTORS(id, first_name, last_name, email, personal_id, adress, birthdate, gender, second_house_id)
values(1, 'elon', 'musk', 'elonmusk@1971.gmail.com', '69420666','USA califronia.str', '28', 'male', 1);

insert into LECTORS(id, first_name, last_name, email, personal_id, adress, birthdate, gender, second_house_id)
values(2, 'jeff', 'bezoz', 'jeffbezoz@gmail.com', '75867845', 'USA califronia.str', '50', 'MALE',1);


insert into students(id, first_name, last_name, personal_id, email, adress, birthdate, gender )
values(3, 'sandro', 'abashidze', '674786476874', 'sandroabashidze@mail.com', 'batumi bouelvard.str', '16', 'male');
insert into students(id, first_name, last_name, personal_id, email, adress, birthdate, gender )
values(4, 'giga', 'dolidze', '674786476874', 'gigadolidze@mail.com', 'batumi bouelvard.str 2', '16', 'male');

insert into students_time(id, students_id, timetable_id)
values(1, 3, 1);


insert into manager(id, name, last_name)
values(1, 'nino', 'ckhovrebadze');