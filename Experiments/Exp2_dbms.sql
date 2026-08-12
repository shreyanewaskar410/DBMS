CREATE DATABASE COMPANY;
USE COMPANY;

CREATE TABLE employee (
fname VARCHAR(10) NOT NULL,
mint VARCHAR(10),
lname VARCHAR(10),
ssn INT PRIMARY KEY NOT NULL,
bdate VARCHAR(20),
address VARCHAR(40),
salary INT NOT NULL,
superssn INT,
dno INT,
sex VARCHAR(5)
);

CREATE TABLE department (
 dname VARCHAR(10) NOT NULL,
 dnumber INT PRIMARY KEY NOT NULL,
 mgrssn INT,
 stdate VARCHAR(20)
 );
 
 CREATE TABLE dept_loc(
 dlno INT,
 dloc VARCHAR(15)
 );
 
  CREATE TABLE project(
  pname VARCHAR(15),
  pnumber INT PRIMARY KEY NOT NULL,
  plocation VARCHAR(20),
  dpnum INT
);

CREATE TABLE works_on (
  essn INT,
  pno INT,
  hours INT
);

CREATE TABLE dependent(
essn INT NOT NULL,
dep_name varchar(20) not null,
sex varchar(10),
bdate varchar(20),
relationship varchar(20)
);
 
 
 ALTER TABLE dept_loc
 ADD PRIMARY KEY (dlno,dloc);
 
 ALTER TABLE works_on
 ADD PRIMARY KEY (essn,pno);
 
 ALTER TABLE dependent
 ADD PRIMARY KEY (essn,dep_name);
 
 ALTER TABLE employee
 ADD FOREIGN KEY (dno) references department(dnumber);
 
 ALTER TABLE department
 ADD FOREIGN KEY (mgrssn) references employee(ssn);
 
 ALTER TABLE dept_loc
 ADD FOREIGN KEY (dlno) references department(dnumber);
 
 ALTER TABLE project
 ADD FOREIGN KEY (dpnum) references department(dnumber);
 
 ALTER TABLE works_on
 ADD FOREIGN KEY (essn) references employee(ssn);
 
 ALTER TABLE works_on
 ADD FOREIGN KEY (pno) references project(pnumber);
 
 ALTER TABLE dependent
 ADD FOREIGN KEY (essn) references employee(ssn);