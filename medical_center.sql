DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  specialization TEXT NOT NULL,
);

CREATE TABLE patients
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL
);

CREATE TABLE assigned_patients
(
  id SERIAL PRIMARY KEY,
  doctor_id INTEGER REFERENCES doctors ON DELETE CASCADE
  patient_id INTEGER REFERENCES patients ON DELETE CASCADE
);

CREATE TABLE diseases
(
  id SERIAL PRIMARY KEY,
  disease TEXT NOT NULL
);

CREATE TABLE diagnoses
(
  id SERIAL PRIMARY KEY,
  doctor_id INTEGER REFERENCES doctors ON DELETE CASCADE
  patient_id INTEGER REFERENCES patients ON DELETE CASCADE
  disease_id INTEGER REFERENCES diseases ON DELETE CASCADE
);

INSERT INTO doctors (name, specialization)
VALUES
  ('Dr. Octopus', 'Icthyologist')
  ('Dr. Roberts', 'Orthapedist')

INSERT INTO patients (first_name, last_name)
VALUES
  ('Jane', 'Doe') 
  ('John', 'Lennon')

INSERT INTO disease_id(disease)
VALUES
  ('Ich')
  ('Impingement')



