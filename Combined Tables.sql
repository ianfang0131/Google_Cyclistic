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