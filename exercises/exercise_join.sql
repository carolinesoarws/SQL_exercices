/*
    You have two tables authors and books. 
    The authos dataset has a 1m+ rows. Here's a smal sample of the table 

    +---------------+----------------+
    -  author_name  - book_name      -
    ----------------+-----------------
    - author_1      - book_1         -
    - author_1      - book_2         - 
    - author_2      - book_3         -
    - author_2      - book_4         - 
    - author_2      - book_5         - 
    - author_3      - book_6         - 
    +---------------+----------------+


    The books dataset also has 1M+ and here's the first six:
    +---------------+----------------+
    -  book_name    - sold_copies    -
    ----------------+-----------------
    - book_1        - 1000           -
    - book_2        - 1500           - 
    - book_3        - 34000          -
    - book_4        - 29000          - 
    - book_5        - 40000          - 
    - book_6        - 4400           - 
    +---------------+----------------+

    Create a query that show the top 3 authors who sold the most book in total 
*/

SELECT authors.author_name, sum(book.sold_copies) as most_selled_books 
FROM authors inner join books on books.book_name = authors.author_name
group by books.book_name 
order by book.sold_copies desc 
limit 3;


/*
    You work for a startup that makes an online presentation software. You have an event log that 
    records everytime  a user insert an image into a presentation (only a user can insert multiple 
    images). The event_log sql table should look like this 

  -+----------+---------------+----
  -- user_id --- event_date_time --
  -- 7494212 --- 1535308430      --
  -- 7494212 --- 1535308433      --
  -- 1475185 --- 1535308444      --
  -- 6946725 --- 1535308475      --
  -- 6946725 --- 1535308476      --
  -- 6946725 --- 1535308477      --
  -+----------+---------------+----

and its has over one billion views

Note: if the event_date_time column's format doesn't look familiar, google 'epoch timestamp''
    
    Write a SQL query to find out how many users inserted more than 1000 but less than 2000 
images in the presentations

*/

-- create
 CREATE TABLE EVENT_LOG (
    USER_ID int(11) NOT NULL,
    EVENT_DATE_TIME  int(11) NOT NULL
) ;

-- insert
INSERT INTO EVENT_LOG values (7494212, 1535308430);
INSERT INTO EVENT_LOG VALUES (7494212, 1535308433);
INSERT INTO EVENT_LOG VALUES (1475185, 1535308444);
INSERT INTO EVENT_LOG VALUES (6946725, 1535308475);
INSERT INTO EVENT_LOG VALUES (6946725, 1535308476);
INSERT INTO EVENT_LOG VALUES (6946725, 1535308477);


-- fetch 
SELECT user_id  from event_log 
group by user_id 
having count(event_date_time) > 1000 and count(event_date_time) < 2000