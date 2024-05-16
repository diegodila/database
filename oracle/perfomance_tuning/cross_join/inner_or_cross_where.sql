INSERT ALL
   INTO A (id, numeros, data) VALUES (1, 101, TO_DATE('20/07/2022', 'DD/MM/YYYY'))
   INTO A (id, numeros, data) VALUES (2, 102, TO_DATE('11/11/2132', 'DD/MM/YYYY'))
   INTO A (id, numeros, data) VALUES (3, 103, TO_DATE('23/10/2023', 'DD/MM/YYYY'))
   INTO A (id, numeros, data) VALUES (3, 103, TO_DATE('21/10/2023', 'DD/MM/YYYY'))
   INTO A (id, numeros, data) VALUES (9, 103, TO_DATE('21/10/2023', 'DD/MM/YYYY'))
SELECT 1 FROM DUAL;

INSERT ALL
   INTO B (id, numeros, data) VALUES (1, 201, TO_DATE('20/01/2022', 'DD/MM/YYYY'))
   INTO B (id, numeros, data) VALUES (2, 202, TO_DATE('22/10/2032', 'DD/MM/YYYY'))
   INTO B (id, numeros, data) VALUES (3, 203, TO_DATE('21/10/2023', 'DD/MM/YYYY'))
   INTO B (id, numeros, data) VALUES (4, 203, TO_DATE('21/12/2011', 'DD/MM/YYYY'))
   INTO B (id, numeros, data) VALUES (4, 203, TO_DATE('23/11/2011', 'DD/MM/YYYY'))
   INTO B (id, numeros, data) VALUES (5, 203, TO_DATE('23/03/2023', 'DD/MM/YYYY'))
SELECT 1 FROM DUAL;

/*
 3. Create  queries with INNER JOIN (not WHERE or cross join):
WHERE clause joins are preferred by some SQL developers, as in the examples below:

 A Cartesian Connection, also known as a Cartesian Product or a CROSS JOIN, is produced by this kind of join. A Cartesian Join creates every conceivable combination of the variables. If we had 1,000 customers and 1,000 in total sales in this example, the query would first produce 1,000,000 results before filtering for the 1,000 entries where CustomerID is correctly connected. The database has performed 100 times more work than was necessary, therefore this is a wasteful use of its resources. Due to the possibility of producing billions or trillions of results, Cartesian Joins pose a particular challenge for large-scale databases.
 */

select * from a,b;