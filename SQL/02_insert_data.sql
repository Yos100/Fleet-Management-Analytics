INSERT INTO Client (Client_id, Client_type, Name, Address_of_appointment)
VALUES
    (1, 'Regular', 'John Doe', '123 Main St'),
    (2, 'Business', 'XYZ Corp', '456 Business Ave'),
    (3, 'Regular', 'Jane Smith', '789 Elm St'),
    (4, 'Regular', 'Alice Johnson', '101 Oak St'),
    (5, 'Business', 'ABC Inc', '222 Commerce Blvd'),
    (6, 'Regular', 'Bob Williams', '333 Pine St'),
    (7, 'Business', 'DEF Co.', '444 Industrial Pkwy'),
    (8, 'Regular', 'Emily Davis', '555 Maple Ave'),
    (9, 'Regular', 'Michael Brown', '777 Cedar St'),
    (10, 'Business', 'GHI Ltd', '888 Market St');
INSERT INTO Vehicle_Type (Vehicle_type, Cost)
VALUES
    ('Tourism', 5.00),
    ('Heavyweight', 10.00),
    ('Super Heavyweight', 15.00);

INSERT INTO Vehicle (Vehicle_id, Vehicle_type, Odometer, Status, Model, Make, Year)
VALUES
    (1, 'Tourism', 5000, 'Available', 'Sedan', 'Toyota', 2020),
    (2, 'Tourism', 6000, 'Available', 'Hatchback', 'Honda', 2019),
    (3, 'Heavyweight', 20000, 'In Use', 'Truck', 'Ford', 2015),
    (4, 'Super Heavyweight', 100000, 'Under Maintenance', 'Trailer', 'Volvo', 2018),
    (5, 'Tourism', 8000, 'Available', 'SUV', 'Mazda', 2022),
    (6, 'Heavyweight', 35000, 'Available', 'Dump Truck', 'Chevrolet', 2017),
    (7, 'Super Heavyweight', 120000, 'In Use', 'Bulldozer', 'Caterpillar', 2014),
    (8, 'Tourism', 7000, 'Available', 'Convertible', 'BMW', 2021),
    (9, 'Heavyweight', 28000, 'Under Maintenance', 'Flatbed Truck', 'GMC', 2016),
    (10, 'Tourism', 9000, 'Available', 'Coupe', 'Audi', 2023);

INSERT INTO Driver (Driver_id, First_name, Last_name, Driver_license)
VALUES
    (1, 'John', 'Doe', 'Tourism'),
    (2, 'Alice', 'Smith', 'Heavyweight'),
    (3, 'Emma', 'Johnson', 'Super Heavyweight'),
    (4, 'Michael', 'Williams', 'Tourism'),
    (5, 'Sophia', 'Brown', 'Tourism'),
    (6, 'William', 'Miller', 'Heavyweight'),
    (7, 'Olivia', 'Garcia', 'Tourism'),
    (8, 'James', 'Martinez', 'Heavyweight'),
    (9, 'Charlotte', 'Jones', 'Super Heavyweight'),
    (10, 'Ethan', 'Taylor', 'Tourism');

INSERT INTO Reservation (Reservation_number, Client_id, Vehicle_id, Date_Time, Location, Expected_duration)
VALUES
    (1, 1, 1, '2023-11-25 10:00:00', '123 Main Street, Anytown', 1),
    (2, 2, 3, '2023-11-26 12:30:00', '456 Business Avenue, Metropolis', 1),
    (3, 3, 4, '2023-11-27 09:00:00', '789 Industrial Zone, Urban City', 1),
    (4, 4, 2, '2023-11-28 15:00:00', '101 Shopping Mall, Downtown', 1),
    (5, 5, 5, '2023-11-29 13:45:00', '222 Residential Lane, Suburbia', 1),
    (6, 6, 6, '2023-11-30 11:30:00', '333 Downtown Street, Urban City', 1),
    (7, 7, 7, '2023-12-01 14:20:00', '444 Portside Road, Coastal City', 1),
    (8, 8, 8, '2023-12-02 16:10:00', '555 Park Avenue, Green Valley', 1),
    (9, 9, 9, '2023-12-03 18:00:00', '777 Suburb Street, Quiet Town', 1),
    (10, 10, 10, '2023-12-04 19:30:00', '888 Beachfront Drive, Seaside Resort', 1),
    (11, 10, 10, '2023-10-12 12:30:00', '1100 Main, Montreal', 1),
            (12, 10, 10, '2023-10-01 10:30:00', '420 Blunt Drive, Snoop City', 4),
            (13, 10, 10, '2023-10-01 10:30:00', '420 Blunt Drive, Snoop City', 4);

INSERT INTO Mission (Mission_id, Reservation_number, Driver_id, Vehicle_id, Start_time, End_time, Vehicle_odometer_start, Vehicle_odometer_end)
VALUES
    (1, 1, 1, 1, '2023-11-25 10:00:00', '2023-11-25 12:00:00', 5000, 6000),
    (2, 2, 2, 3, '2023-11-26 12:30:00', '2023-11-26 14:45:00', 20000, 21000),
    (3, 3, 3, 4, '2023-11-27 09:00:00', '2023-11-27 14:30:00', 100000, 100500),
    (4, 4, 4, 2, '2023-11-28 15:00:00', '2023-11-28 17:30:00', 6000, 8000),
    (5, 5, 5, 5, '2023-11-29 13:45:00', '2023-11-29 18:00:00', 8000, 9000),
    (6, 6, 6, 6, '2023-11-30 11:30:00', '2023-11-30 14:45:00', 35000, 35500),
    (7, 7, 7, 7, '2023-12-01 14:20:00', '2023-12-01 17:00:00', 120000, 120500),
    (8, 8, 8, 8, '2023-12-02 16:10:00', '2023-12-02 18:15:00', 7000, 7200),
    (9, 9, 9, 9, '2023-12-03 18:00:00', '2023-12-03 21:30:00', 28000, 28500),
    (10, 10, 10, 10, '2023-12-04 19:30:00', '2023-12-04 22:45:00', 9000, 9200),
    (11, 11, 10, 10, '2023-10-12 12:30:00', '2023-10-12 16:00:00', 8600, 9000),
    (12, 12, 10, 10, '2023-10-01 10:30:00', '2023-10-04 14:30:00', 8000, 18000),
    (13, 13, 10, 10, '2023-10-11 12:30:00', '2023-10-14 13:30:00', 15000, 23500);

INSERT INTO Bill (Bill_id, Client_id, Mission_id, Total_cost, Payment_type, Paid)
VALUES
    (1, 1, 1, 150.50, 'Cash', TRUE),
    (2, 2, 2, 200.25, 'Credit', TRUE),
    (3, 3, 3, 350.75, 'Cheque', FALSE),
    (4, 4, 4, 1800.00, 'Cash', TRUE),
    (5, 5, 5, 500.00, 'Credit', FALSE),
    (6, 6, 6, 275.80, 'Credit', TRUE),
    (7, 7, 7, 400.00, 'Cash', TRUE),
    (8, 8, 8, 1200, 'Cheque', TRUE),
    (9, 9, 9, 320.30, 'Credit', FALSE),
    (10, 10, 10, 150.00, 'Cash', TRUE);

