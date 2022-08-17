/*

    Write a SQL Query that fetches - to get or to return - the unique values from DEPARTMENT 
    from WORKER table and print its lenght.

    Length() - this function returns a lenght of a string (in bytes).
*/

USE ORG;

select distinct lenght(department) from ORG.Worker