CREATE TABLE mother (
id_mother SERIAL PRIMARY KEY,
age INT,
blood_type VARCHAR(5),
parity INT,
previous_deliveries INT,
maternal_conditions TEXT
);

CREATE TABLE pregnancy (
id_pregnancy SERIAL PRIMARY KEY,
id_mother INT NOT NULL,
gestational_age_prenatal INT,
prenatal_control_count INT,
multiple_pregnancy BOOLEAN,
pregnancy_conditions TEXT,

```
CONSTRAINT fk_pregnancy_mother
    FOREIGN KEY (id_mother)
    REFERENCES mother(id_mother)
```

);

CREATE TABLE delivery (
id_delivery SERIAL PRIMARY KEY,
id_pregnancy INT NOT NULL,
delivery_type VARCHAR(50),
rupture_membranes_hours INT,
antibiotics BOOLEAN,
oxytocin BOOLEAN,
significant_companion BOOLEAN,
intrapartum_monitoring BOOLEAN,
vaginal_examinations INT,
birth_outcome VARCHAR(50),

```
CONSTRAINT fk_delivery_pregnancy
    FOREIGN KEY (id_pregnancy)
    REFERENCES pregnancy(id_pregnancy)
```

);

CREATE TABLE newborn (
id_newborn SERIAL PRIMARY KEY,
id_delivery INT NOT NULL,
birth_date DATE,
birth_time TIME,
sex VARCHAR(10),
weight_gr INT,
length_cm DECIMAL(5,2),
head_circumference_cm DECIMAL(5,2),
apgar_1 INT,
apgar_5 INT,
gestational_age_physical_exam INT,

```
CONSTRAINT fk_newborn_delivery
    FOREIGN KEY (id_delivery)
    REFERENCES delivery(id_delivery)
```

);

CREATE TABLE neonatal_control (
id_control SERIAL PRIMARY KEY,
id_newborn INT NOT NULL,
hour_of_life INT,
heart_rate INT,
respiratory_rate INT,
temperature DECIMAL(4,2),
oxygen_saturation INT,
urination BOOLEAN,
stool BOOLEAN,

```
CONSTRAINT fk_control_newborn
    FOREIGN KEY (id_newborn)
    REFERENCES newborn(id_newborn)
```

);

CREATE TABLE neonatal_outcome (
id_outcome SERIAL PRIMARY KEY,
id_newborn INT NOT NULL,
destination VARCHAR(100),
admission_reason VARCHAR(255),

```
CONSTRAINT fk_outcome_newborn
    FOREIGN KEY (id_newborn)
    REFERENCES newborn(id_newborn)
```

);
