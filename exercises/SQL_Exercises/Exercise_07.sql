/*
    Write a SQL query to print the DEPARTMENT from Worker table after removing white space from the
    left side.

    LTRIM(): This function removes from leading space from a string.


*/
USE ORG;

Select LTRIM(DEPARTMENT) as DEPARTMENT from ORG.Worker;