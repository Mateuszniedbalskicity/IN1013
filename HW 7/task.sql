-- 1
CREATE VIEW samsBills AS
SELECT restStaff.first_name, restStaff.surname, restBill.bill_date, restBill.cust_name, restBill.bill_total
FROM restBill JOIN restStaff ON restStaff.staff_no=restBill.waiter_no
WHERE restStaff.staff_no=004;

-- 2 
SELECT * FROM samsBills WHERE bill_total>400;

-- 3
CREATE VIEW roomTotals AS
SELECT restRoom_management.room_name, SUM(restRest_table.no_of_seats) AS Total_Num
FROM restRoom_management JOIN restRest_table ON restRoom_management.room_name=restRest_table.room_name
GROUP BY restRoom_management.room_name;

-- 4
CREATE VIEW teamTotals AS
SELECT restStaff.first_name, restStaff.surname, SUM(restBill.bill_total)
FROM restBill JOIN restStaff ON restStaff.staff_no=restBill.waiter_no
GROUP BY restStaff.staff_no;
