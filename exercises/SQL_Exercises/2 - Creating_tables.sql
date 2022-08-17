/*
    Tables: Table is a arragment of information in rows and columns where you can put or data
    to be analysed, organized and used for any way you may need 
*/

/* Not null: 
        - Null value is diferrent from zero value or a field that contains space. 
        - A field with a null value is one that has been left blank during record creation. In this case NOT NULL means 
that this table must not have NULL (or blank) Values.
    
    Primary Key: 
        - A primary key constraint uniquely identifies each record in a table. 
        - Primary Keys must be contain unique values and cannot contain NULL values. 
        - A table can have only one primary key, and in the table, this primary key can consiste of 
    a single or multiple columns. 

    Auto increment:
        - Auto-increment allows a unique number to be generated automatically when a new record is 
    inserted on a table. 
        - Often this is a primery key field that we would like to be created automatically every time 
    a new record is inserted.

*/

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);


/* 
    Foreign key:
        - The foreign key constraint is used to prevent actions that would destroy likes between tables.
        - A foreign key is a field (or colletion of fields) in one table, that refers to the primary key
    in another table. 
        - The table with the foreign key is called de child table, and the table with the primary key 
    is called referenced or parent table. 

    On delete cascade:
        -  When a value is delete from the father tablle, de value is also deleted in the child table.
        - For exemple, if a delete a value from the worker table, this value is also be deleted 
    from the bonus table.

*/
CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
