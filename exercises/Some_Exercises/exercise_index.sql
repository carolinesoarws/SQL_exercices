/*
    Definition of index: Index gelps retrieve information from the database faster and with higher 
efficiency. The are 3 types of indexes, in this tutorial we are going to use Clustered type.

    ############# Clustered Index #############
     - It helps us to store data and indexes at the same time. 
     - It Stores data in onlu one way, based on the key values.
     - Clustered index always use one or more colu,m for create an index. 

*/


-- Creating a table with Cloustered Index

Create table student_info(
    student_id INT NOT NULL AUTO_INCREMENT,
    student_name VARCHAR(45),
    student_email VARCHAR(50),
    PRIMARY KEY (student_id),    
    INDEX (student_id),
    UNIQUE KEY email_unique (student_email)
)

-- populating the table
INSERT INTO student_info (student_name, student_email) Values("Park Bo Young", "pby@email.com");
INSERT INTO student_info (student_name, student_email) Values("Park Eun bin", "peb@email.com");
INSERT INTO student_info (student_name, student_email) Values("Kang Tae Oh", "kto@email.com");
INSERT INTO student_info (student_name, student_email) Values("Kang Ki Young", "kky@email.com");
INSERT INTO student_info (student_name, student_email) Values("Yoon kyeong Ha", "ykh@email.com");
INSERT INTO student_info (student_name, student_email) Values("Joo Hyun Young", "jhy@email.com");
INSERT INTO student_info (student_name, student_email) Values("Bae Ji Won", "bjw@email.com");
INSERT INTO student_info (student_name, student_email) Values("Jeon Bae Soo", "jbs@email.com");
INSERT INTO student_info (student_name, student_email) Values("Jin Kyeong", "jk@email.com");
INSERT INTO student_info (student_name, student_email) Values("Choi Dae Hoon", "cdh@email.com");
INSERT INTO student_info (student_name, student_email) Values("Koo Kyo Hwan", "kkh@email.com");
INSERT INTO student_info (student_name, student_email) Values("Yun Yu Seon", "yys@email.com");
INSERT INTO student_info (student_name, student_email) Values("Joo Jong Hyuk", "jjh@email.com");


-- selecting the index
select student_id from student_info;