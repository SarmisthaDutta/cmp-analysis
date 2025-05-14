USE FurnoSpaceDB;
GO


SELECT * FROM zone_visits;

SELECT zone_name, COUNT(*) AS visit_count
FROM zone_visits
GROUP BY zone_name
ORDER BY visit_count DESC;

SELECT zone_name, AVG(duration_minutes) AS avg_duration
FROM zone_visits
GROUP BY zone_name;

SELECT visit_date, COUNT(*) AS daily_visits
FROM zone_visits
GROUP BY visit_date
ORDER BY visit_date;

SELECT customer_id, COUNT(*) AS visit_count
FROM zone_visits
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT visit_date, zone_name, COUNT(*) AS visit_count
FROM zone_visits
GROUP BY visit_date, zone_name
ORDER BY visit_date, zone_name;


SELECT 
  visit_date, 
  COUNT(DISTINCT customer_id) AS daily_visits
FROM 
  zone_visits
GROUP BY 
  visit_date
ORDER BY 
  visit_date;

