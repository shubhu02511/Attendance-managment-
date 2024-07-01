-- Create the student_dbb database if it does not exist
CREATE DATABASE IF NOT EXISTS student_dbb;

-- Use the student_dbb database
USE student_dbb;

-- Table to store students
CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(255) NOT NULL,
    session_year VARCHAR(10) NOT NULL,
    class_section VARCHAR(5) NOT NULL
);

-- Table to store attendance records
CREATE TABLE IF NOT EXISTS attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    status VARCHAR(10) NOT NULL,
    session_year VARCHAR(10) NOT NULL,
    class_section VARCHAR(5) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
