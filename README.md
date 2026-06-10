# NeoCare Database

## Overview

NeoCare Database is a relational healthcare database designed to support maternal and neonatal clinical data management.

The database models the maternal-neonatal care pathway, covering pregnancy, labor and delivery, newborn assessment, neonatal monitoring, and clinical outcomes.

This project was developed as part of my transition from Neonatal Intensive Care Unit (NICU) Midwife to Software Engineering, combining healthcare expertise with database design and data management.

---

## Project Objectives

* Design a normalized relational healthcare database.
* Model real-world maternal and neonatal clinical workflows.
* Implement relationships using primary and foreign keys.
* Support analytics, reporting, and dashboard applications.
* Serve as the data layer for the NeoCare Dashboard project.

---

## Database Engine

* MySQL

---

## Database Design

### Core Entities

#### Mother

Stores maternal demographic and clinical information.

Key attributes:

* Age
* Blood type
* Parity
* Previous deliveries
* Maternal conditions

---

#### Pregnancy

Stores prenatal pregnancy information.

Key attributes:

* Prenatal gestational age
* Prenatal control count
* Multiple pregnancy indicator
* Pregnancy conditions

---

#### Delivery

Stores labor and delivery information.

Key attributes:

* Delivery type
* Rupture of membranes duration
* Antibiotic administration
* Oxytocin use
* Intrapartum monitoring
* Delivery outcome

---

#### Newborn

Stores neonatal assessment data at birth.

Key attributes:

* Sex
* Birth weight
* Length
* Gestational age
* APGAR scores

---

#### Neonatal Control

Stores neonatal adaptation and monitoring information.

Key attributes:

* Heart rate
* Respiratory rate
* Temperature
* Oxygen saturation
* Urination
* Stool elimination

---

#### Neonatal Outcome

Stores neonatal destination and hospitalization outcomes.

Key attributes:

* Destination
* Admission reason

---

## Entity Relationships

Mother
→ Pregnancy
→ Delivery
→ Newborn
→ Neonatal Control

Newborn
→ Neonatal Outcome

The database uses primary and foreign key constraints to maintain referential integrity.

---

## Files

### schema.sql

Contains all database creation scripts:

* Tables
* Primary Keys
* Foreign Keys
* Constraints

### sample_data.sql

Contains sample data for testing and dashboard development.

---

## Use Cases

The database supports:

* Maternal health analytics
* Neonatal monitoring
* Clinical reporting
* Healthcare dashboards
* Data visualization projects
* Educational healthcare software development

---

## Related Project

NeoCare Dashboard

A Streamlit-based analytics dashboard built on top of this database.

---

## Author

Valentina Hernández

Software Engineering Student | Former NICU Midwife

Focused on Healthcare Technology, Health Informatics, Databases, and Digital Transformation.
