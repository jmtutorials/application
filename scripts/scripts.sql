CREATE TABLE STUDENT
( student_id number(10) NOT NULL, 
  student_name varchar2(50) NOT NULL,
  student_std varchar2(50) NOT NULL,
  date_of_birth VARCHAR(20) NOT NULL,
  mobile_no varchar2(50) NOT NULL,
  email_id varchar2(50) NOT NULL,
  address varchar2(200)NOT NULL,
  school_name varchar2(200)NOT NULL,
  parent_name varchar2(50)NOT NULL,
  refered_by varchar2(50),
  CONSTRAINT student_pk PRIMARY KEY (student_id)  
);


CREATE SEQUENCE jmstudent_id_seq
  START WITH 1
  INCREMENT BY 1
;