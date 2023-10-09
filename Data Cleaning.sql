# Frist of all, Remove leading and traling spaces
 update
		cyclistic.combined_table_1
SET
	ride_id = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(ride_id)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
    rideable_type = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(rideable_type)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
    started_at = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(started_at)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
    ended_at = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(ended_at)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
    start_station_name = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(start_station_name)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
    start_station_id = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(start_station_id)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
    end_station_name = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(end_station_name)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
    end_station_id = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(end_station_id)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
    start_lat = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(start_lat)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
    start_lng =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(start_lng)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
    end_lat = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(end_lat)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
    end_lng = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(end_lng)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), ''))),
	member_casual = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(member_casual)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), '')));



# We only need distinct ride_id and all the duplicated will be removed. lookes like we only all unique ride_id.
# Remove duplicate rows in the 'ride_id' 
CREATE TEMPORARY TABLE dupl_id AS
SELECT 
	ride_id
FROM 
	cyclistic.combined_table_1
GROUP BY 
	ride_id
HAVING 
	COUNT(*)>1;
    

DELETE FROM cyclistic.combined_table_1
WHERE ride_id IN
			(	
				SELECT ride_id
                FROM dupl_id
                GROUP BY ride_id
                HAVING COUNT(*)>1
			);
            
DROP temporary table IF EXISTS dupl_id;


# We only keep the rows where the time length was longer than 1 minute but less than 24 hours, also any null in either started_at or ended_at will be removed.
DELETE FROM 
	cyclistic.combined_table_1
WHERE 
	(TIMESTAMPDIFF(minute,started_at, ended_at)  > 1440 OR TIMESTAMPDIFF(minute, started_at, ended_at) < 1)
    OR (started_at IS NULL OR ended_at IS NULL);
    

# Removing null cells from tables as either Classic/docked bikes they should all have a start station name and end station name
DELETE FROM cyclistic.combined_table_1 
WHERE
    (rideable_type = 'classic_bike'
    OR rideable_type = 'docked_bike')
    AND ((start_station_name = ''
    AND start_station_id = '')
    OR (end_station_name = ''
    AND end_station_id = ''));
    

# Lastely, remove null values from latitude and longitude
DELETE FROM cyclistic.combined_table_1 
WHERE
    start_lat = '' OR
    start_lng = '' OR
	end_lat = ''   OR
	end_lng = '';
    
    
# Added new columnride_length to calculate ride time length for every single trip
ALTER TABLE 
	cyclistic.combined_table_1
ADD COLUMN 
	ride_length FLOAT
GENERATED ALWAYS AS 
	(ROUND(TIME_TO_SEC(TIMEDIFF(ended_at, started_at))/60,1)) STORED;
    

# Create a new columns "day_of_week"
ALTER TABLE 
	cyclistic.combined_table_1
ADD COLUMN
	day_of_week varchar(20)
GENERATED ALWAYS AS (
	CASE
		WHEN DAYOFWEEK(started_at) = 1 THEN "Sun"
		WHEN DAYOFWEEK(started_at) = 2 THEN "Mon"
		WHEN DAYOFWEEK(started_at) = 3 THEN "Tue"
		WHEN DAYOFWEEK(started_at) = 4 THEN "Wed"
		WHEN DAYOFWEEK(started_at) = 5 THEN "Thu"
		WHEN DAYOFWEEK(started_at) = 6 THEN "Fri"
		WHEN DAYOFWEEK(started_at) = 7 THEN "Sat"
    ELSE "NULL"
END
 ) STORED;


# Create a new column "Month"
ALTER TABLE 
	cyclistic.combined_table_1
ADD COLUMN
	Month varchar(20)
GENERATED ALWAYS AS 
 (
	CASE
		WHEN MONTH(started_at) = 1 THEN "Jan"
		WHEN MONTH(started_at) = 2 THEN "Feb"
		WHEN MONTH(started_at) = 3 THEN "Mar"
		WHEN MONTH(started_at) = 4 THEN "Apr"
		WHEN MONTH(started_at) = 5 THEN "May"
		WHEN MONTH(started_at) = 6 THEN "Jun"
		WHEN MONTH(started_at) = 7 THEN "Jul"
		WHEN MONTH(started_at) = 8 THEN "Aug"
		WHEN MONTH(started_at) = 9 THEN "Sep"
		WHEN MONTH(started_at) = 10 THEN "Oct"
		WHEN MONTH(started_at) = 11 THEN "Nov"
		WHEN MONTH(started_at) = 12 THEN "Dec"
        ELSE "null"
	END
) STORED;


# Create a new column "time_of_day"
ALTER TABLE 
	cyclistic.combined_table_1
ADD COLUMN
		time_of_day  time
GENERATED ALWAYS AS 
		(TIME(started_at)) STORED;