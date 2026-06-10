-- MOTHERS

INSERT INTO mother (age, blood_type, parity, previous_deliveries, maternal_conditions)
VALUES
(28, 'O+', 1, 0, 'None'),
(35, 'A+', 3, 2, 'Gestational Diabetes'),
(19, 'O-', 0, 0, 'None'),
(40, 'B+', 4, 3, 'Chronic Hypertension'),
(31, 'AB+', 2, 1, 'Hypothyroidism');

-- PREGNANCIES

INSERT INTO pregnancy (
id_mother,
gestational_age_prenatal,
prenatal_control_count,
multiple_pregnancy,
pregnancy_conditions
)
VALUES
(1, 39, 8, FALSE, 'None'),
(2, 37, 10, FALSE, 'Gestational Diabetes'),
(3, 34, 5, FALSE, 'Threatened Preterm Labor'),
(4, 38, 12, FALSE, 'Chronic Hypertension'),
(5, 40, 9, FALSE, 'Hypothyroidism');

-- DELIVERIES

INSERT INTO delivery (
id_pregnancy,
delivery_type,
rupture_membranes_hours,
antibiotics,
oxytocin,
significant_companion,
intrapartum_monitoring,
vaginal_examinations,
birth_outcome
)
VALUES
(1, 'Vaginal', 4, FALSE, TRUE, TRUE, TRUE, 3, 'Live Birth'),
(2, 'Cesarean', 0, TRUE, FALSE, TRUE, TRUE, 0, 'Live Birth'),
(3, 'Vaginal', 18, TRUE, TRUE, FALSE, TRUE, 5, 'Live Birth'),
(4, 'Cesarean', 2, FALSE, FALSE, TRUE, TRUE, 0, 'Live Birth'),
(5, 'Vaginal', 6, FALSE, TRUE, TRUE, TRUE, 2, 'Live Birth');

-- NEWBORNS

INSERT INTO newborn (
id_delivery,
birth_date,
birth_time,
sex,
weight_gr,
length_cm,
head_circumference_cm,
apgar_1,
apgar_5,
gestational_age_physical_exam
)
VALUES
(1, '2026-01-10', '08:30', 'Female', 3350, 50.0, 34.0, 9, 10, 39),
(2, '2026-01-15', '14:15', 'Male', 3200, 49.0, 35.0, 8, 9, 37),
(3, '2026-02-01', '03:20', 'Male', 2100, 44.0, 31.0, 7, 8, 34),
(4, '2026-02-18', '11:00', 'Female', 2900, 48.0, 33.0, 8, 9, 38),
(5, '2026-03-05', '19:40', 'Female', 3500, 51.0, 35.5, 9, 10, 40);

-- NEONATAL CONTROLS

INSERT INTO neonatal_control (
id_newborn,
hour_of_life,
heart_rate,
respiratory_rate,
temperature,
oxygen_saturation,
urination,
stool
)
VALUES
(1, 1, 145, 42, 36.8, 98, TRUE, FALSE),
(1, 2, 140, 40, 36.9, 99, TRUE, TRUE),

(2, 1, 150, 45, 36.7, 97, FALSE, FALSE),
(2, 2, 145, 42, 36.8, 98, TRUE, FALSE),

(3, 1, 160, 60, 36.4, 92, FALSE, FALSE),
(3, 2, 155, 58, 36.5, 94, FALSE, FALSE),

(4, 1, 148, 44, 36.7, 97, TRUE, FALSE),
(4, 2, 142, 40, 36.8, 98, TRUE, TRUE),

(5, 1, 138, 40, 36.9, 99, TRUE, FALSE),
(5, 2, 136, 38, 37.0, 99, TRUE, TRUE);

-- NEONATAL OUTCOMES

INSERT INTO neonatal_outcome (
id_newborn,
destination,
admission_reason
)
VALUES
(1, 'Rooming In', NULL),
(2, 'Rooming In', NULL),
(3, 'NICU', 'Prematurity'),
(4, 'Neonatology', 'Observation'),
(5, 'Rooming In', NULL);
