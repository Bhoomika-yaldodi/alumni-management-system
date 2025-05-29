-- Create Departments Table
CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(100)
);

-- Create Alumni Table
CREATE TABLE alumni (
  alumni_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  phone VARCHAR(15),
  graduation_year INT,
  department_id INT,
  current_city VARCHAR(50),
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Create Events Table
CREATE TABLE events (
  event_id INT PRIMARY KEY,
  event_name VARCHAR(100),
  event_date DATE,
  location VARCHAR(50)
);

-- Create Donations Table
CREATE TABLE donations (
  donation_id INT PRIMARY KEY,
  alumni_id INT,
  donation_amount DECIMAL(10,2),
  donation_date DATE,
  FOREIGN KEY (alumni_id) REFERENCES alumni(alumni_id)
);

-- Create Alumni_Events Table
CREATE TABLE alumni_events (
  alumni_id INT,
  event_id INT,
  PRIMARY KEY (alumni_id, event_id),
  FOREIGN KEY (alumni_id) REFERENCES alumni(alumni_id),
  FOREIGN KEY (event_id) REFERENCES events(event_id)
);
