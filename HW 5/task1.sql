
-- Question 1

SELECT bill_date,bill_total FROM restBill WHERE cust_name="Bob Crow";

-- Question 2

SELECT DISTINCT cust_name FROM restBill WHERE cust_name LIKE "%Smith" ORDER BY cust_name ASC;

-- question 3

SELECT DISTINCT cust_name FROM restBill WHERE cust_name LIKE "% C%";

-- question 4

SELECT first_name, surname FROM restStaff WHERE headwaiter IS NOT NULL;

-- question 5

SELECT * FROM restBill WHERE bill_date LIKE "1602%";

-- question 6

SELECT DISTINCT bill_date FROM restBill WHERE bill_date LIKE "15%" ORDER BY bill_date ASC;