# Task1-internship-
CREATE DATABASE AirlineManagement;
USE AirlineManagement;

CREATE TABLE Pilots (
    pilot_id INT PRIMARY KEY AUTO_INCREMENT,
    pilot_name VARCHAR(100) NOT NULL
);

CREATE TABLE Flights (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    flight_name VARCHAR(255) NOT NULL,
    departure_year INT,
    pilot_id INT,
    FOREIGN KEY (pilot_id) REFERENCES Pilots(pilot_id)
);

CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY AUTO_INCREMENT,
    passenger_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) UNIQUE
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    flight_id INT,
    passenger_id INT,
    booking_date DATE NOT NULL,
    travel_date DATE,
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);

INSERT INTO Pilots (pilot_name) VALUES
('Captain Krishna'),
('Captain Atharva'),
('Captain Nilesh'),
('Captain Prasad'),
('Captain Omkar');

INSERT INTO Flights (flight_name, departure_year, pilot_id) VALUES
('Air India AI101', 2021, 1),
('IndiGo 6E202', 2022, 2),
('SpiceJet SG303', 2023, 3),
('Vistara UK404', 2024, 4),
('GoAir G805', 2022, 5),
('Akasa Air AK606', 2023, 2),
('Air Asia I5107', 2024, 1);

INSERT INTO Passengers (passenger_name, phone_number) VALUES
('Krissna', '9067419087'),
('Atharva', '8459561890'),
('Nilesh', '7745632871');

INSERT INTO Bookings (flight_id, passenger_id, booking_date, travel_date) VALUES
(1, 1, '2025-09-01', '2025-09-15'),
(3, 2, '2025-09-05', NULL),
(5, 3, '2025-09-07', '2025-09-20');

SELECT * FROM Pilots;
SELECT * FROM Flights;
SELECT * FROM Passengers;
SELECT * FROM Bookings;
