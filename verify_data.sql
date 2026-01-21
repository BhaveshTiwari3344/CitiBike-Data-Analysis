-- basis queries to check database ,table and insert  is properly loaded or not

SELECT name FROM sys.databases WHERE name = 'CitiBikeDB';

SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'citibike_trips';

SELECT COUNT(*) AS Total_Rows_Loaded FROM citibike_trips;

SELECT TOP 10 * FROM citibike_trips;
--using where clause

SELECT * FROM citibike_trips 
WHERE rideable_type = 'electric_bike' 
AND member_casual = 'member';

--using special operators --> LIKE operator ka use karke 'Grand St' wale stations search karna

SELECT * FROM citibike_trips 
WHERE start_station_name LIKE '%Grand St%';

-- BETWEEN operator ka use karke specific dates ke beech ka data show kar sakte hai

SELECT * FROM citibike_trips 
WHERE started_at BETWEEN '2025-12-01' AND '2025-12-15';

-- using group by and order by clause

-- Har station se total kitni rides hui aur unhe descending order mein lagana
SELECT start_station_name, COUNT(ride_id) AS total_rides
FROM citibike_trips
GROUP BY start_station_name
ORDER BY total_rides DESC;


SELECT start_station_name, COUNT(ride_id) AS total_rides
FROM citibike_trips
GROUP BY start_station_name
HAVING COUNT(ride_id) > 1000
ORDER BY total_rides DESC;yes


