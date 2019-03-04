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
  userId varchar2(50),NOT NULL,
  password varchar2(50),NOT NULL,
  CONSTRAINT student_pk PRIMARY KEY (student_id)  
);

CREATE TABLE ENQUIRY
( 
  enquiry_id   number(10) NOT NULL,
  student_name varchar2(50) NOT NULL,
  student_std varchar2(50) NOT NULL,
  mobile_no varchar2(50) NOT NULL,
  email_id varchar2(50) NOT NULL,
  school_name varchar2(200)NOT NULL,
  refered_by varchar2(50),
  CONSTRAINT student_pk PRIMARY KEY (enquiry_id)  
);

CREATE TABLE FEES
( 
  student_id   number(10) NOT NULL,
  total_fees number(10) NOT NULL,
  fees_paid number(10) NOT NULL,
  fees_balance number(10) NOT NULL,
  CONSTRAINT student_pk PRIMARY KEY (enquiry_id)  
);

CREATE TABLE TIMETABLE
( 
  std   number(10) NOT NULL,
  timebtabledate varchar(20) NOT NULL,
  subject varchar(20) NOT NULL,
  from_time varchar(20) NOT NULL,
  to_time varchar(20) NOT NULL,
  faculty varchar(20) NOT NULL,
  CONSTRAINT time_table_pk PRIMARY KEY (timebtabledate,std)
);

CREATE SEQUENCE jmenquiry_id_seq
  START WITH 1
  INCREMENT BY 1
;


CREATE SEQUENCE jmstudent_id_seq
  START WITH 1
  INCREMENT BY 1
;