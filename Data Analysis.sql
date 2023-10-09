/* Now we're ready to answer the business question- "How do annual members and casual riders use Cyclistic bikes differently?
Before importing it into Power BI to create data visualizations, I prefer to sort and aggregate my data and have a few insights
*/

# Total rides
SELECT
	count(*) AS total_rides
FROM
	cyclistic.combined_table_1;


# Total rides by member type
SELECT 
	member_casual AS member_type, count(*) AS total_rides
FROM
	cyclistic.combined_table_1
GROUP BY
	member_casual;
    

# Calculate the max ride_length
SELECT 
	Max(ride_length) AS max_ride_length,
    member_casual
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
    
    
    
# Total rides per hour by member type
SELECT
	HOUR(started_at)AS hour,
    member_casual AS member_type,
    count(*) AS total_rides
FROM
	cyclistic.combined_table_1
GROUP BY 1,2
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

