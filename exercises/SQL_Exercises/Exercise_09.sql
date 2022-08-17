/*
    Write a SQL query to print the FIRST_NAME from Worker table after replacing a with "A"

    Replace() - Thins function replaces all ocurrences of a substring within a new substring 

*/
USE ORG;
Select replace(FIRST_NAME, 'a', 'A') from ORG.Worker;
