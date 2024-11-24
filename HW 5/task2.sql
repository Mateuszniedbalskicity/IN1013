
    -- question 1

    SELECT sum(bill_total) as Income FROM restBill;

    -- question 2

    SELECT sum(bill_total) as "Feb Income" FROM restBill WHERE bill_date LIKE "1602%";

    -- question 3

    SELECT table_no, avg(bill_total) from restBill where table_no="002";

    -- question 4

    SELECT min(no_of_seats) as Min, avg(no_of_seats) as Avg, max(no_of_seats) as Max from restRest_table where room_name="blue";

    -- question 5 

    SELECT count(bill_no) FROM restBill WHERE table_no ="002" OR table_no="004";