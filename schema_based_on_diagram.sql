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

-- Create treatments table
DROP TABLE IF EXISTS treatments;
CREATE TABLE treatments(
  id INT GENERATED ALWAYS AS IDENTITY,
  type VARCHAR(50),
  name VARCHAR(50),
  PRIMARY KEY (id)
);

-- Create invoices table
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(
  id INT GENERATED ALWAYS AS IDENTITY,
  total_amount DECIMAL,
  generated_at TIMESTAMP,
  payed_at TIMESTAMP,
  medical_history_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories (id)
);