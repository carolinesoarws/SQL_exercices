/*
    Write an SQL query to print the first_name and Last_name from worker table into a single 
    column COMPLETE_NAME. A space char should separete them

    CONCAT() - This function add two or more strings together
*/

use ORG;
select CONCAT(FIRST_NAME, ' ', LAST_NAME) AS COMPLETE_NAME from ORG.Worker;