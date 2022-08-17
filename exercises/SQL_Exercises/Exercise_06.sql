/*
    Write a SQL Query to print the FIRST_NAME from Worker table after removing white space from
from the right side
    - RTRIM(): This function removes trailing from a string.  
*/
USE ORG;

Select rtrim(FIRST_NAME) as Worker_name from ORG.Worker 