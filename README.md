# 🏥 Hospital Management System - MySQL Database

A complete Hospital Management System database built using **MySQL**. This project is designed to manage patients, appointments, doctors, staff, billing, and department data efficiently for a healthcare facility.

## 📁 Features

- ✅ Patient Registration & Info Management  
- ✅ Doctor & Department Assignment  
- ✅ Appointment Scheduling & Tracking  
- ✅ Staff Directory Linked to Departments  
- ✅ Billing System with Payment Status  
- ✅ Views for Simplified Data Access  
- ✅ Stored Procedures for Automation  

---

## 🧱 Database Schema Overview

### Tables Created:
- `Patients`
- `Doctors`
- `Departments`
- `Appointments`
- `Billing`
- `Staff`

### Sample Data
- Each table is populated with **30 sample records** using `INSERT` statements.

---

## 📊 Views

- `view_patient_details`: Patient + Appointment + Doctor info  
- `view_doctor_info`: Doctor details with department  
- `view_billing_status`: Patient billing summary  
- `view_appointments_schedule`: Appointment listings  
- `view_staff_directory`: Staff members with department data  

---

## ⚙️ Stored Procedures

- `ShowAllPatients()`  
- `ShowAllDoctors()`  
- `ShowUpcomingAppointments()`  
- `ShowUnpaidBills()`  
- `ShowStaffDirectory()`  
- `AddNewPatient(...)`  
- `GenerateBill(...)`  
- `ScheduleAppointment(...)`  
- `GetPatientAppointments(...)`  
- `ListDepartmentStaff(...)`  

> ✅ Both **parameterized** and **non-parameterized** stored procedures are included.

---


## 🛠️ Tech Stack

- **Database:** MySQL 8.0+  
- **Tools:** MySQL Workbench, phpMyAdmin *(optional)*  
- **Language:** SQL (DDL, DML, DCL)

---

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/hospital-management-db.git
   cd hospital-management-db
