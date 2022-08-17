/*
    Write a SQL query to print the first three characters of FIRST_NAME from Worker table. 


    Substring() - this function extracts some characters from a string 
*/
USE ORG;
select substring(FIRST_NAME, 1,3) as Worker_Name from ORG.Worker;