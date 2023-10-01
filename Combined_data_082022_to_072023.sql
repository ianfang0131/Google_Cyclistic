/* My findings:
ride_id: As we all know that ride_id values are unique, and each ride_id is 16 characters (data cleaning: Any duplicates occur or ride_id is not 16 characters).
rideable_type: The data contains 3 types of bikes: classic, docked, and electric bikes.
started_at/ended_at: these two columns show the date and the time the bike trip start and end, so the difference will be the ride time. (data cleaning: All NA in cloumns "started_at and "ended_at", ride time less than 1 minute, ride time is negative and ride time more than 24 hours will be removed)
start_station_name/end_station_name: Number of start_station_name (1802) doesn't match the number of start_station_id
start_lat/
*/

#uplaod the most recent 12 months table to database from Aug 2022 to July 2023

use Cyclistic
CREATE TABLE tripdata_202208
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202208-divvy-tripdata.csv" INTO TABLE tripdata_202208
FIELDS terminated by','
Ignore 1 lines;

CREATE TABLE tripdata_202209
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202209-divvy-tripdata.csv" INTO TABLE tripdata_202209
FIELDS terminated by','
Ignore 1 lines;

CREATE TABLE tripdata_202210
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202210-divvy-tripdata.csv" INTO TABLE tripdata_202210
FIELDS terminated by','
Ignore 1 lines;



CREATE TABLE tripdata_202211
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202211-divvy-tripdata.csv" INTO TABLE tripdata_202211
FIELDS terminated by','
Ignore 1 lines;

CREATE TABLE tripdata_202212
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202212-divvy-tripdata.csv" INTO TABLE tripdata_202212
FIELDS terminated by','
Ignore 1 lines;

CREATE TABLE tripdata_202301
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202301-divvy-tripdata.csv" INTO TABLE tripdata_202301
FIELDS terminated by','
Ignore 1 lines;

CREATE TABLE tripdata_202302
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202302-divvy-tripdata.csv" INTO TABLE tripdata_202302
FIELDS terminated by','
Ignore 1 lines;

CREATE TABLE tripdata_202303
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202303-divvy-tripdata.csv" INTO TABLE tripdata_202303
FIELDS terminated by','
Ignore 1 lines;

CREATE TABLE tripdata_202304
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202304-divvy-tripdata.csv" INTO TABLE tripdata_202304
FIELDS terminated by','
Ignore 1 lines;

CREATE TABLE tripdata_202305
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202305-divvy-tripdata.csv" INTO TABLE tripdata_202305
FIELDS terminated by','
Ignore 1 lines;


CREATE TABLE tripdata_202306
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202306-divvy-tripdata.csv" INTO TABLE tripdata_202306
FIELDS terminated by','
Ignore 1 lines;

CREATE TABLE tripdata_202307
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Data/cyclistic/202307-divvy-tripdata.csv" INTO TABLE tripdata_202307
FIELDS terminated by','
Ignore 1 lines;


# Combined all 12 months tables into one table which containing all bike trip data from Aug 2022 to July 2023

CREATE TABLE combined_table
(
ride_id varchar(50),
rideable_type varchar(50),
started_at datetime,
ended_at datetime,
start_station_name varchar(500),
start_station_id varchar(500),
end_station_name varchar(500),
end_station_id varchar(500),
start_lat varchar(20),
start_lng varchar(20),
end_lat varchar(20),
end_lng varchar(20),
member_casual varchar(20), 
);

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202208;

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202209;

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202210;

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202211;

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202212;

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202301;

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202302;

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202303;

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202304;

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202305;

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202306;

INSERT INTO combined_table 
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
FROM tripdata_202307;

# Confirmed that the amount of rows in the combined_table matches the sum of the 12 monthly tables rows.




#---------------------------------------------------data wrangling---------------------------------------------------------------------------------------------------------------------------
# Before starting cleaning table, We need to create a duplicate table in order to come back if something goes wrong during my analysis

CREATE TABLE combined_table_1 AS
SELECT * FROM cyclistic.combined_table


# Frist of all, Remove leading and traling spaces
# How to remove invisible characters Referece link: https://stackoverflow.com/questions/951518/replace-a-newline-in-tsql

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
	member_casual = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(member_casual)), CHAR(9), ''), CHAR(10), ''), CHAR(11), ''), CHAR(12), ''), CHAR(13), '')))
		
    
    
    
# We only need distinct ride_id and all the duplicated will be removed. lookes like we only all unique ride_id

SELECT 
	 count(ride_id), count(distinct ride_id)
FROM
	cyclistic.combined_table_1



# Remove duplicate rows in the 'ride_id' column
-- Create a temporary table to store the duplicat ride_id values
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
      
DROP temporary table IF EXISTS dupl_id



# Check length for ride_id, As we all know that ride_id values are unique, and each ride_id is 16 characters

SELECT 
	length(ride_id), count(*) AS count
FROM
	cyclistic.combined_table
GROUP BY
	length(ride_id)
    
    
#Check the rideable types: as we seen below, there are only 3 types of rideable type 

SELECT
	distinct rideable_type
FROM
	cyclistic.combined_table_1
    
# We only keep the rows where the time length was longer than 1 minute but less than 24 hours, also any null in either started_at or ended_at will be removed.


DELETE FROM 
	cyclistic.combined_table_1
WHERE 
	(TIMESTAMPDIFF(minute,started_at, ended_at)  > 1440 OR TIMESTAMPDIFF(minute, started_at, ended_at) < 1)
    OR (started_at IS NULL OR ended_at IS NULL)
	

SELECT *
FROM cyclistic.combined_table_1
WHERE ended_at is NULL



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
    

# Removing null cells from tables as either Classic/docked bikes they should all have a start station name and end station name


# filtered out rideable_type as we only need rideable_type are either 'calssic_bike' or 'docked_bike', then
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
        AND end_station_id = '')


DELETE FROM cyclistic.combined_table_1 
WHERE
    (rideable_type = 'classic_bike'
    OR rideable_type = 'docked_bike')
    AND ((start_station_name = ''
    AND start_station_id = '')
    OR (end_station_name = ''
    AND end_station_id = ''))


# Lastely, remove null values from latitude and longitude

DELETE FROM cyclistic.combined_table_1 
WHERE
    start_lat = '' OR
    start_lng = '' OR
	end_lat = ''   OR
	end_lng = ''



# Added new columnride_length to calculate ride time length for every single trip
   /* I searched the answer by using Chat gpt */


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
        

SELECT ROUND(TIME_TO_SEC('00:07:31')/60,1)
select DAYofWEEK('2022-08-08 21:34:15' ) AS day_of_week
SELECT MONTH('2022-08-08 21:34:15') AS day_of_week;
SELECT DAY('2022-08-20 21:34:15') AS day_of_week;
SELECT TIME('2022-08-08 21:34:15') AS day_of_week;

-------------------------------------- Summary of cleaning stepts I took---------------------------------
/* 1. Remove leading and traling spaces
   2. Removed duplicated ride_id, Check length for ride_id and make sure each ride_id is 16 characters
   3. Remove trips where ride time legth was more than 24 hours and less than 1 minute
   4. Removing trips where the type of bike in the Classic/docked corresponding to start or end station was null 
   5. Lastely, remove null values from latitude and longitude 
   6. There are 157994 rows are removed and have a clean combined table with 5565612 rows.
   7. Added new columns "day_of_week", "month"," time_of_day".
*/


--------------------------------------------Analyze--------------------------------------------------------------------------------
/* Now we're ready to answer the business question- "How do annual members and casual riders use Cyclistic bikes differently?
Before importing it into Power BI to create data visualizations, I prefer to sort and aggregate my data and have a few insights
*/

# Total rides
SELECT
	count(*) AS total_rides
FROM
	cyclistic.combined_table_1;


# Total rides by Type of bikes used 
SELECT 
	rideable_type, member_casual, count(*) As total_rides
FROM
	cyclistic.combined_table_1
GROUP BY 1,2
ORDER BY 1;



# Total rides by member type
SELECT 
	member_casual AS member_type, count(*) AS total_rides
FROM
	cyclistic.combined_table_1
GROUP BY
	member_casual;
    

# The average ride length of member and casual rider
SELECT 
	member_casual AS member_type, ROUND(AVG(ride_length),2) AS avg_ride_length
FROM
	cyclistic.combined_table_1
GROUP BY 
	member_casual;


# Total rides by member type and bike type
SELECT
	rideable_type, member_casual, count(*)
FROM 
	cyclistic.combined_table_1
GROUP BY
	1,2;


#Total rides by Month and member type
SELECT
    member_casual AS member_type,
    MONTH(started_at) AS month,
    COUNT(*) AS count
FROM 
    cyclistic.combined_table_1
GROUP BY 
  2,1
ORDER BY
    2 ASC;
    

#Total Rides by weekday and member type
SELECT
	dayofweek(started_at) AS day_of_week,
    member_casual AS member_type,
    count(*) AS total_rides
FROM
	cyclistic.combined_table_1
GROUP BY 
	1,2
ORDER BY
	1 ASC;
    
    

# Total rides per hour

SELECT
	HOUR(started_at)AS hour,
    count(*) AS total_rides
FROM
	cyclistic.combined_table_1
GROUP BY 1
ORDER BY 1 ASC;

# OR I can

SELECT
	extract(HOUR FROM started_at), COUNT(*) AS total_rides
FROM
	cyclistic.combined_table_1
GROUP BY 1
ORDER BY 1 ASC;
    

# Top 10 start station name and top 10 end station name
SELECT
	start_station_name,
    Count(*) AS total_rides
FROM
	cyclistic.combined_table_1
WHERE 
	start_station_name !=''
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;


SELECT
	end_station_name,
    Count(*) AS total_rides
FROM
	cyclistic.combined_table_1
WHERE 
	end_station_name !=''
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;



#10 start station name corresponding with total rides by member type

SELECT 
	start_station_name,
    member_casual,
    count(*) AS count
FROM 
	cyclistic.combined_table_1
WHERE
	member_casual = 'member' AND start_station_name !=''
GROUP BY 
	start_station_name,
    member_casual
ORDER BY
	count DESC
LIMIT 10	



---------------------------------------------------------------------Power Bi---------------------------------------------------------------------

SELECT 
	member_casual, count(*) as count
FROM cyclistic.combined_table_1
Group by 1