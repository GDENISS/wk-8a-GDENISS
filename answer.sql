-- create database
CREATE DATABASE cinic_booking_system;

-- creating tables
CREATE TABLE specializations (
specialization_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE doctors (
doctor_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
specialization_id INT,
FOREIGN KEY (specialization_id) REFERENCES specializations (specialization_id)
);

CREATE TABLE patients (
patient_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
date_of_birth DATE,
phone VARCHAR(10) NOT NULL UNIQUE,
email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);


CREATE TABLE Prescriptions (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    medication TEXT NOT NULL,
    dosage VARCHAR(100),
    notes TEXT,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);
