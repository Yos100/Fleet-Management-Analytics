-- Query #1: Identify business customers
SELECT Client_id, Name
FROM Client
WHERE Client_type = 'Business';

-- Query #2: Retrieve reservations with reservation number greater than 1
SELECT *
FROM Reservation
WHERE Reservation_number > 1


-- Query #3: List drivers and vehicles that participated in missions
SELECT First_name, Last_name, Model, Make, Year
FROM Mission
JOIN Driver ON Driver.Driver_id = Mission.Driver_id
JOIN Vehicle ON Vehicle.Vehicle_id = Mission.Vehicle_id;
 



-- Query #4: Identify missions completed between October 11 and October 18, 2023
SELECT First_name, Last_name, Model, Make, Year, Mission_id, Start_time, End_time 
FROM Mission
JOIN Driver ON Driver.Driver_id = Mission.Driver_id
JOIN Vehicle ON Vehicle.Vehicle_id = Mission.Vehicle_id
WHERE Start_time > “October 11, 2023” and End_time < “October 18, 2023”;



-- Query #5: Find customers with unpaid invoices
SELECT DISTINCT Client.Client_id, Name
FROM Client
JOIN Bill ON Client.Client_id = Bill.Client_id
WHERE Paid = false;



-- Query #6: Identify drivers who operated GMC vehicles
SELECT DISTINCT First_name, Last_name
FROM Driver
JOIN Mission ON Driver.Driver_id = Mission.Driver_id
JOIN Vehicle ON Mission.Vehicle_id = Vehicle.Vehicle_id
WHERE LOWER(Make) = ‘gmc’;



-- Query #7: Find customers with invoices greater than $1,000
SELECT Client.Client_id, Name
FROM Client
JOIN Bill ON Client.Client_id = Bill.Client_id
WHERE Total_cost > 1000;



-- Query #8: Count invoices associated with each customer
SELECT Client_id, Name, COUNT(Bill_id)
FROM Client
LEFT JOIN Bill ON Client.Client_id = Bill.Client_id
GROUP BY Client_id, Name;




-- Query #9: Identify drivers with missions traveling more than 7,000 km between October and November 2023
SELECT DISTINCT First_name, Last_name
FROM Driver
JOIN Mission ON Driver.Driver_id = Mission.Driver_id
WHERE Start_time > “October 1, 2023” and End_time < “November 30, 2023”
AND (Vehicle_odometer_end - Vehicle_odometer_start) > 7000;

