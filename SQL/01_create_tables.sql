CREATE TYPE client_type AS ENUM (‘Regular’, ‘Business’);
CREATE TABLE Client (
    Client_id INT PRIMARY KEY,
    Client_type client_type NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Address_of_appointment VARCHAR(255) NOT NULL
);


CREATE TYPE vehicle_type_type AS ENUM(‘Tourism’, ‘Heavyweight’, ‘Super Heavyweight’);
CREATE TABLE Vehicle_Type (
    Vehicle_type  vehicle_type_type PRIMARY KEY,
    Cost DECIMAL(10, 2) NOT NULL
);


CREATE TABLE Vehicle (
    Vehicle_id INT PRIMARY KEY,
    Vehicle_type vehicle_type_type NOT NULL,
    Odometer INT NOT NULL,
    Status VARCHAR(50) NOT NULL,
    Model VARCHAR(100) NOT NULL,
    Make VARCHAR(100),
    Year INT,
    FOREIGN KEY (Vehicle_type) REFERENCES Vehicle_Type(Vehicle_type)
);


CREATE TYPE driver_license AS ENUM(‘Tourism’, ‘Heavyweight’, ‘Super Heavyweight’);
CREATE TABLE Driver (
    Driver_id INT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    Driver_license driver_license NOT NULL
);


CREATE TABLE Mission (
    Mission_id INT PRIMARY KEY,
    Reservation_number INT NOT NULL,
    Driver_id INT NOT NULL,
    Vehicle_id INT NOT NULL,
    Start_time TIMESTAMPTZ NOT NULL, 
    End_time TIMESTAMPTZ NOT NULL,
    Vehicle_odometer_start INT NOT NULL,
    Vehicle_odometer_end INT NOT NULL,
    FOREIGN KEY (Driver_id) REFERENCES Driver(Driver_id),
    FOREIGN KEY (Reservation_number) REFERENCES Reservation(Reservation_number),
    FOREIGN KEY (Vehicle_id) REFERENCES Vehicle(Vehicle_id)
);


CREATE TABLE Reservation (
    Reservation_number INT PRIMARY KEY,
    Client_id INT NOT NULL,
    Vehicle_id INT NOT NULL,
    Date_Time TIMESTAMPTZ NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Expected_duration INT CHECK (Expected_duration <= 5),
    FOREIGN KEY (Client_id) REFERENCES Client(Client_id),
    FOREIGN KEY (Vehicle_id) REFERENCES Vehicle(Vehicle_id)
);


CREATE TYPE payment_type AS ENUM(‘Cash’, ‘Cheque’, ‘Credit’);
CREATE TABLE Bill (
    Bill_id INT PRIMARY KEY,
    Client_id INT NOT NULL,
    Mission_id INT NOT NULL,
    Total_cost DECIMAL(10, 2) NOT NULL,
    Payment_type payment_type NOT NULL,
    Paid BOOLEAN NOT NULL,
    FOREIGN KEY (Client_id) REFERENCES Client(Client_id),
    FOREIGN KEY (Mission_id) REFERENCES Mission(Mission_id)
);
