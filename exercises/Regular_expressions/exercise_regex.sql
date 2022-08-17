/*
    Definition of Regexp: A regex is a string of text that lets you create patteners that helps 
match, locate, manage txt. You can make some filters with select using refexp


    How to use the regexp

[...] - Any character unique in the in the break or a specified ensemble. ([a-h]); [aeiou])
[ˆ...] - Any character unique that is NOT in the break or a specified ensemble. ([ˆa-h]); [ˆaeiou])
^ -  The beggining of the string (outside of square brackets); denying (inside of square brackets)
$ - the end of the string 
a|b|c - Alternation (a or b or c) - (character pipe |)
* - Zero or more events of the foregoing element 
+ - One or more events of the foregoing element
{n}	- N instances of the foregoing element 
{m,n} - From M to N instances of the foregoing element 

*/

-- Return the names of the books from the table tbl_livros where the name of the  book iniciates 
-- with one of the letters F or S 
SELECT nome_livro FROM tbl_livro WHERE nome_livro REGEXP '^[FS]';

-- Return the books where the names not iniciates with the letter F neither letter S 
SELECT nome_livro FROM tbl_livro WHERE nome_livro REGEXP '^[^FS]';

-- Return the name of the books that ends with the letters n or g
SELECT nome_livro FROM tbl_livro WHERE nome_livro REGEXP '[ng]$';

-- Return the name of the books who names starts with the letters F or S or still with the 
-- sequence of the character Mi
SELECT nome_livro FROM tbl_livro WHERE nome_livro REGEXP '^[FS]|Mi'

-- Write a query to get name of the student that contains exacly four characters
SELECT * FROM student WHERE tb_name REGEXP '^....$'

-- Search for a word with a minimun of 4 characters and having the leters b or sh such that is a 
-- character between then 
SELECT name_id FROM  tbl_names REGEXP 