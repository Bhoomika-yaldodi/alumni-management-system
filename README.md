# 🎓 Alumni Management System

This project is a MySQL-based **Alumni Management System** that helps manage alumni data, events, and donations. It includes pre-populated CSV files and an SQL schema for easy setup.

---

## 📂 Project Structure
alumni-management-system/
├── alumni.csv
├── departments.csv
├── events.csv
├── donations.csv
├── alumni_events.csv
├── create_tables.sql



---

## 🧠 Database Overview

The database contains 5 main tables:

- **departments** – List of academic departments
- **alumni** – Alumni information
- **events** – Events organized by the institution
- **donations** – Donations made by alumni
- **alumni_events** – Many-to-many relationship between alumni and events

---

## ⚙️ How to Use

### 1. Create the Database Tables

Use `create_tables.sql` to create the tables in your MySQL database.

#### In MySQL Workbench:
- Open a new SQL tab
- Paste the script or open `create_tables.sql`
- Run the script

### 2. Import CSV Data

Use **MySQL Workbench > Table Data Import Wizard**:

Import each CSV file into its matching table:

| CSV File           | Target Table      |
|--------------------|-------------------|
| departments.csv    | departments       |
| alumni.csv         | alumni            |
| events.csv         | events            |
| donations.csv      | donations         |
| alumni_events.csv  | alumni_events     |

---

## 💡 Sample Queries

```sql
-- List all alumni with their department
SELECT a.first_name, a.last_name, d.department_name
FROM alumni a
JOIN departments d ON a.department_id = d.department_id;

-- Total donations by each alumni
SELECT alumni_id, SUM(donation_amount) AS total_donated
FROM donations
GROUP BY alumni_id;

-- Events attended by each alumni
SELECT a.first_name, a.last_name, e.event_name
FROM alumni a
JOIN alumni_events ae ON a.alumni_id = ae.alumni_id
JOIN events e ON ae.event_id = e.event_id;

**Bhoomika K Yaldodi**  
MySQL Project | 2025

