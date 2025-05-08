# Clinic Booking System - MySQL Database

This repository contains a complete relational database schema for managing a clinic booking system. It is designed using MySQL and follows the principles of good database design and normalization.

## Project Overview

The Clinic Booking System database is structured to manage key components of a clinic's operations, including:

- Patient records
- Doctor profiles and their specializations
- Appointment scheduling
- Prescription recording

The database design adheres to 1NF, 2NF, and 3NF to eliminate redundancy and ensure data integrity.

## Schema Description

### Tables Included:

1. **Patients** – Stores patient details such as name, date of birth, phone number, and email.
2. **Doctors** – Stores doctor names, contact details, and associated specialization.
3. **Specializations** – Stores different medical specializations such as Dermatology, Cardiology, etc.
4. **Appointments** – Stores appointment details including the patient, doctor, date, and status.
5. **Prescriptions** – Stores medication details linked to specific appointments.

### Relationships:

- Each doctor is linked to one specialization (one-to-many).
- Each appointment is linked to one doctor and one patient (many-to-one for both).
- Each appointment may have one or more prescriptions (one-to-many).

## Files Included

- `clinic_booking_system.sql`: SQL script containing all `CREATE TABLE` statements with primary and foreign key constraints.
- `ERD.png`: A visual entity-relationship diagram showing how all tables are related.

## How to Use

1. Open MySQL Workbench or any MySQL client.
2. Create a new database schema (e.g., `clinic_db`).
3. Run the SQL script:
   ```sql
   clinic_booking_system.sql;
