drop table student;

CREATE TABLE STUDENT
( student_id number(10) NOT NULL,  
  student_lname varchar2(50) NOT NULL,  
  student_fname varchar2(50) NOT NULL,
  student_std number(10) NOT NULL,
  date_of_birth VARCHAR(20) NOT NULL,
  mobile_no varchar2(50) NOT NULL,
  email_id varchar2(50) NOT NULL,
  fees NUMBER(10,2) NOT NULL,
  address varchar2(200)NOT NULL,
  school_name varchar2(200)NOT NULL,
  parent_name varchar2(50)NOT NULL,
  refered_by varchar2(50),
  CONSTRAINT student_pk PRIMARY KEY (student_id)  
);