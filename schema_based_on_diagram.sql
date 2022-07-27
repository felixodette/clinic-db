-- Create database
CREATE DATABASE clinic;

-- Create patients table
DROP TABLE IF EXISTS patients;
CREATE TABLE patients(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50),
  date_of_birth DATE,
  PRIMARY KEY(id)
);

-- Create medical histories table
DROP TABLE IF EXISTS medical_histories;
CREATE TABLE medical_histories(
  id INT GENERATED ALWAYS AS IDENTITY,
  admitted_at TIMESTAMP,
  patient_id INT,
  status VARCHAR(100),
  PRIMARY KEY(id),
  FOREIGN KEY (patient_id) REFERENCES patients (id)
);