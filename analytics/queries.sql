-- ==========================================
-- NeoCare Dashboard
-- Sample Analytics Queries
-- ==========================================

-- Total number of births

SELECT COUNT(*) AS total_births
FROM newborn;

-- Average birth weight

SELECT AVG(weight_gr) AS average_birth_weight
FROM newborn;

-- Births by sex

SELECT sex, COUNT(*) AS total
FROM newborn
GROUP BY sex;

-- Delivery type distribution

SELECT delivery_type, COUNT(*) AS total
FROM delivery
GROUP BY delivery_type;

-- Average APGAR score at 1 minute

SELECT AVG(apgar_1) AS average_apgar_1
FROM newborn;

-- Average APGAR score at 5 minutes

SELECT AVG(apgar_5) AS average_apgar_5
FROM newborn;

-- Neonatal destination distribution

SELECT destination, COUNT(*) AS total
FROM neonatal_outcome
GROUP BY destination;

-- Number of hospitalized newborns

SELECT COUNT(*) AS hospitalized_newborns
FROM neonatal_outcome
WHERE destination <> 'Rooming In';

-- Average gestational age

SELECT AVG(gestational_age_physical_exam) AS average_gestational_age
FROM newborn;

-- Premature newborns (<37 weeks)

SELECT COUNT(*) AS premature_newborns
FROM newborn
WHERE gestational_age_physical_exam < 37;

-- Maternal conditions frequency

SELECT maternal_conditions, COUNT(*) AS total
FROM mother
GROUP BY maternal_conditions;

-- Average birth weight by delivery type

SELECT
d.delivery_type,
AVG(n.weight_gr) AS average_weight
FROM newborn n
JOIN delivery d
ON n.id_delivery = d.id_delivery
GROUP BY d.delivery_type;

-- Neonatal outcomes by delivery type

SELECT
d.delivery_type,
no.destination,
COUNT(*) AS total
FROM delivery d
JOIN newborn n
ON d.id_delivery = n.id_delivery
JOIN neonatal_outcome no
ON n.id_newborn = no.id_newborn
GROUP BY d.delivery_type, no.destination;
