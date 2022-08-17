/*
    Write an SQL query to fetch - to return or to get - First_name from worker table in upper case

    Upper() - this function converts a string to upper-case

    For more information: https://www.w3schools.com/sql/func_sqlserver_upper.asp
    
*/

USE ORG;

select upper(FIRST_NAME) as  Worker_name from ORG.Worker;