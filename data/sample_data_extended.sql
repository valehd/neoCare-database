-- Mothers (6-15)
INSERT INTO mother (age, blood_type, parity, previous_deliveries, maternal_conditions)
VALUES
(26, 'A+', 1, 0, 'None'),
(38, 'O+', 3, 2, 'Chronic Hypertension'),
(24, 'B+', 0, 0, 'None'),
(33, 'AB+', 2, 1, 'Hypothyroidism'),
(29, 'O-', 1, 0, 'Obesity'),
(22, 'A+', 0, 0, 'None'),
(37, 'B-', 4, 3, 'Type 2 Diabetes'),
(31, 'O+', 2, 1, 'None'),
(35, 'A-', 3, 2, 'Chronic Hypertension'),
(27, 'AB-', 1, 0, 'None');

-- Pregnancies (6-15)
INSERT INTO pregnancy (
    id_mother,
    gestational_age_prenatal,
    prenatal_control_count,
    multiple_pregnancy,
    pregnancy_conditions
)
VALUES
(6, 39, 8, FALSE, 'None'),
(7, 38, 11, FALSE, 'Hypertensive Disorder'),
(8, 40, 7, FALSE, 'None'),
(9, 39, 9, FALSE, 'None'),
(10, 37, 10, FALSE, 'Gestational Diabetes'),
(11, 35, 6, FALSE, 'Preterm Labor Risk'),
(12, 38, 12, FALSE, 'Type 2 Diabetes'),
(13, 40, 8, FALSE, 'None'),
(14, 36, 9, FALSE, 'Hypertensive Disorder'),
(15, 39, 8, FALSE, 'None');


-- Deliveries (6-15)
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
(6, 'Vaginal', 5, FALSE, TRUE, TRUE, TRUE, 2, 'Live Birth'),
(7, 'Cesarean', 1, FALSE, FALSE, TRUE, TRUE, 0, 'Live Birth'),
(8, 'Vaginal', 4, FALSE, TRUE, TRUE, TRUE, 3, 'Live Birth'),
(9, 'Vaginal', 6, FALSE, TRUE, TRUE, TRUE, 3, 'Live Birth'),
(10, 'Cesarean', 0, TRUE, FALSE, TRUE, TRUE, 0, 'Live Birth'),
(11, 'Vaginal', 14, TRUE, TRUE, FALSE, TRUE, 4, 'Live Birth'),
(12, 'Cesarean', 2, FALSE, FALSE, TRUE, TRUE, 0, 'Live Birth'),
(13, 'Vaginal', 5, FALSE, TRUE, TRUE, TRUE, 2, 'Live Birth'),
(14, 'Cesarean', 3, TRUE, FALSE, TRUE, TRUE, 0, 'Live Birth'),
(15, 'Vaginal', 4, FALSE, TRUE, TRUE, TRUE, 2, 'Live Birth');

-- Newborns (6-15)
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
(6, '2026-03-10', '09:15', 'Male', 3400, 50.0, 34.5, 9, 10, 39),
(7, '2026-03-15', '14:20', 'Female', 3150, 49.0, 34.0, 8, 9, 38),
(8, '2026-03-18', '02:10', 'Male', 3600, 51.0, 35.5, 9, 10, 40),
(9, '2026-03-22', '18:45', 'Female', 3250, 49.5, 34.0, 9, 10, 39),
(10, '2026-03-28', '11:30', 'Male', 2950, 48.0, 33.5, 8, 9, 37),
(11, '2026-04-02', '04:40', 'Female', 2400, 45.0, 31.5, 7, 8, 35),
(12, '2026-04-08', '13:50', 'Male', 3300, 50.0, 34.5, 8, 9, 38),
(13, '2026-04-15', '07:25', 'Female', 3500, 51.0, 35.0, 9, 10, 40),
(14, '2026-04-20', '16:15', 'Male', 2700, 47.0, 32.5, 8, 9, 36),
(15, '2026-04-25', '10:05', 'Female', 3400, 50.0, 34.5, 9, 10, 39);

-- Neonatal Controls (6-15)
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
(6,1,142,40,36.8,98,TRUE,FALSE),
(6,2,138,38,36.9,99,TRUE,TRUE),

(7,1,145,42,36.7,97,TRUE,FALSE),
(7,2,140,40,36.8,98,TRUE,TRUE),

(8,1,140,38,36.9,99,TRUE,FALSE),
(8,2,136,36,37.0,99,TRUE,TRUE),

(9,1,144,40,36.8,98,TRUE,FALSE),
(9,2,140,38,36.9,99,TRUE,TRUE),

(10,1,148,42,36.7,97,FALSE,FALSE),
(10,2,144,40,36.8,98,TRUE,FALSE),

(11,1,158,58,36.5,94,FALSE,FALSE),
(11,2,152,54,36.6,95,FALSE,FALSE),

(12,1,146,42,36.8,97,TRUE,FALSE),
(12,2,142,40,36.9,98,TRUE,TRUE),

(13,1,138,38,36.9,99,TRUE,FALSE),
(13,2,134,36,37.0,99,TRUE,TRUE),

(14,1,152,50,36.6,95,FALSE,FALSE),
(14,2,148,46,36.7,96,TRUE,FALSE),

(15,1,142,40,36.8,98,TRUE,FALSE),
(15,2,138,38,36.9,99,TRUE,TRUE);

-- Neonatal Outcomes (6-15)
INSERT INTO neonatal_outcome (
    id_newborn,
    destination,
    admission_reason
)
VALUES
(6, 'Rooming In', NULL),
(7, 'Rooming In', NULL),
(8, 'Rooming In', NULL),
(9, 'Rooming In', NULL),
(10, 'Rooming In', NULL),
(11, 'Neonatology', 'Late Prematurity'),
(12, 'Rooming In', NULL),
(13, 'Rooming In', NULL),
(14, 'Neonatology', 'Observation'),
(15, 'Rooming In', NULL);
