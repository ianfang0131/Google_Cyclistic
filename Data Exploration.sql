# We only need distinct ride_id and all the duplicated will be removed. lookes like we only all unique ride_id
SELECT 
	 count(ride_id), count(distinct ride_id)
FROM
	cyclistic.combined_table_1;
    
    
# Duplicate rows in the 'ride_id' column
CREATE TEMPORARY TABLE dupl_id AS
SELECT 
	ride_id
FROM 
	cyclistic.combined_table_1
GROUP BY 
	ride_id
HAVING 
	COUNT(*)>1;
    
# Check length for ride_id, As we all know that ride_id values are unique, and each ride_id is 16 characters
SELECT 
	length(ride_id), count(*) AS count
FROM
	cyclistic.combined_table
GROUP BY
	length(ride_id);
    
    
#Check the rideable types: as we seen below, there are only 3 types of rideable type 
SELECT
	distinct rideable_type
FROM
	cyclistic.combined_table_1;
    
# We only keep the rows where the time length was longer than 1 minute but less than 24 hours, also any null in either started_at or ended_at will be removed
SELECT
	count(*) AS out_of_range
FROM
	cyclistic.combined_table_1
WHERE 
	(TIMESTAMPDIFF(minute,started_at, ended_at)  > 1440 OR TIMESTAMPDIFF(minute, started_at, ended_at) < 1)
    OR (started_at IS NULL OR ended_at IS NULL);
    

# Check start/end_station_name  and Start/end_station_id to masure names are consistent
SELECT 
	start_station_name, count(*)
FROM
	cyclistic.combined_table_1
GROUP BY	
	start_station_name
ORDER BY 1;
    

SELECT
	end_station_name, count(*)
FROM
	cyclistic.combined_table_1
GROUP BY 1
ORDER BY 1;

SELECT
	COUNT(DISTINCT start_station_name) AS unique_start_station_name,
    COUNT(DISTINCT end_station_name) AS unique_end_station_name,
    COUNT(DISTINCT start_station_id) AS unique_start_station_id,
    COUNT(DISTINCT end_station_id) AS unique_end_station_id
FROM
	cyclistic.combined_table_1;
    

# filtered rideable_type as we only need rideable_type are either 'calssic_bike' or 'docked_bike', then
# we need to find out start_station_name and start_station_id are null or end_station_name and end_stationid are null as we all know that these calssic/docked bike needs to start and end at the docking station.
SELECT 
    *
FROM
    (SELECT 
        *
    FROM
        cyclistic.combined_table_1
    WHERE
        rideable_type = 'cLassic_bike'
            OR rideable_type = 'docked_bike') AS station_bike
WHERE
    (start_station_name = ''
        AND start_station_id = '')
        OR (end_station_name = ''
        AND end_station_id = '');

	