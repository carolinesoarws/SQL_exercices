/*

    Write a SQL query to find tha position of the alphabet ('a') in the first name column 
    'Amitabh' from Worker table. 

    CHARINDEX() - this function searches for a substring in a string and returns the position,
                - If the position is not found, this function returns 0 
*/

USE ORG

    Select CHARINDEX('a', Lower(FIRST_NAME)) from ORG.Worker where FIRST_NAME like 'Amitabh'

/* Right code:
     INSTR(): This function returns the position of the first ocurrence of a string  in another 
string 
        - This function is case sensitive by default, 
        - Using the BINARY operator will make INSTR work as the Case-Sensitive function
*/
Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Amitabh';
