# Google Data Analytics Final Project: Cyclistic Case Study
Course: [Google Data Analytics Capstone:](https://www.coursera.org/learn/google-data-analytics-capstone)
## Introduction
This is the final project for the Google Analytics certificate course on Coursera. In this project, I will use MySQL for data cleaning and analysis, as well as Power BI for data visualization. I will also follow the steps of the data analysis process: Ask, Prepare, Process, Analyze, Share, and Act
### Background of the analysis
In this case study, I am a junior data analyst working in the marketing team at Cyclistic, a bike share company in Chicago. The director of marketing believes that the company's future success depends on the number of annual memberships. Therefore, my role in this task is to understand how member riders and casual riders use Cyclistic bikes differently. With these insights, the marketing team will design a new marketing strategy to convert casual riders into annual members
### Data Sources:[divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)(From Aug,2022 to July,2023)

## Ask
### Stakeholders
My key stakeholder is Lily Moreno who is the director of marketing and my manager, and she is responsible for the development of campaigns and initiatives to promote the bike-share program. These may include email, social media, and other channels.
In order to help Marketing team complete this business task, the team has assigned me with answering the following three questions:
1.	How do annual members and casual riders use Cyclistic bike differently?
(Break down the questions and hypothesis)
•	The number of riders for these two user groups in the most recent one-year period.
•	What is the average usage in minutes for these two different user groups?
•	What is the daily, weekly and monthly usage for these two different user groups?
•	Is there any seasonality in the usage of Cyclistic bikes for these two different user groups? 
2.	Why would casual riders buy Cyclistic annual membership?
(Breaking down the questions and hypothesis)
•	What are the benefits of converting casual users to members?
(We need to determine if the usage habits of casual users are similar to those of member users.)
3.	How can Cyclistic use digital media to influence casual riders to become members?
•	No conclusion can be drawn until we figure out the patterns of behavior of these two different user groups.

## Prepare
In order to answer all the business questions, I need to analyze historical Cyclistic bike trip data from Aug 2022 to July 2023. The data is publicly available and has been provided by Motivate international Inc. It’s stored in the company’s database under the license. Each dataset is in csv format, sorted by month and update regularly. To address data-privacy concerns, all  riders’ personal identifiable information has been removed. Some information may be missing. For the purpose of this study, all the 12 months CSV files are stored on my personal local drive under the folder name “Google Data analytic final project”.

The data contains 13 columns:
1.	ride_id: unique number associated to ride trip.
2.	Rideable_type: type of bikes used.
3.	Started_at / ended_at: start/end  date for the trip  (Length of bike trip should be more than 1 minute and less than 24 hours)
4.	Start_station_name/ end_station_name:  name of the station where the ride started/ended.
5.	start_station_id / end_station_id: unique number code assigned to the station
6.	start_lat/start_lng : latitude/longitude where the ride started/ended.
7.	end_lat/ end_lng: latitude/longitude where the ride ended.
8.	Member_casual: customer type. ( we only have “member”= annual member and “casual”= casual rider.

## Process
Due to the size of the data we need to implement, an  Excel sheet will not be a good tool to handle big data. So, I decided to use MySQL. The following is my process:
### Combined tables
Mysql Query: [Combined tables](https://github.com/ianfang0131/Google_Cyclistic/blob/main/Combined%20Tables.sql)

I initially created a dataset name “ Cyclistic” and then imported the most recent 12 months csv files respectively from Aug, 2022 to July 2023 as12 separate monthly table in the dataset.

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/a864a144-d8b5-406a-84d6-8b458f79be3a)

I’ve Combined all 12 months tables into one table which containing all bike trip data from Aug 2022 to July 2023. I named the table as “combined table”.

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/1f43a54d-9a70-466f-a02c-e5d1540a9a89)

(I created a duplicated table named “combined_table_1” as a backup in case something goes wrong during my data cleaning) 

### Data Exploration
Mysql Query: [Data Exploration](https://github.com/ianfang0131/Google_Cyclistic/blob/main/Data%20Exploration.sql).

### Data Cleaning
Mysql Query: [Data Cleaning](https://github.com/ianfang0131/Google_Cyclistic/blob/main/Data%20Cleaning.sql).

Documentation of the cleaning process and my findings:

•	Removed leading and trailing spaces.

•	Removed duplicated ride_id, check length for ride_id and make sure each ride_id is 16 characters.

•	Removed rows where ride_time length was more than 24 hours and less than 1 minute.

•	Removed rows where the type of bike in classic/docked corresponding to start/end station names were empty or null.

•	Rideable_type: this column only contains 3 type of bikes : classic, docked and electric bikes.

•	Remove null values from latitude and longitude.

•	Added a new column named ride_length to calculate ride time length for every single trip.

•	Added new columns “ day_of_week”, “ time_of_day”.

•	There are 157994 rows are removed and have a cleaned combined table with 5565612 rows.

## Analyze

Mysql Query: [Data Analysis](https://github.com/ianfang0131/Google_Cyclistic/blob/main/Data%20Analysis.sql)

I’ve created a few quick insights to take a quick look before importing it into Power Bi to visualize my findings.

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/5de19183-c372-4a99-9b4d-1f833fdd1fc5)
![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/f5f8fff3-cb5e-475a-8b89-2a805bba4120)
![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/4c7d72bb-da9b-4a12-b225-98e3ee65c86f)

Essentially, I used Mysql to aggregate my table in order to gain valuable insights and observe how these two types of riders perform differently. Afterward, I will import the table into Power BI to create data visualizations and more.

Data Visualization: [Power Bi](https://app.powerbi.com/view?r=eyJrIjoiZWZlOTkyNWMtYmEwNy00MGE4LTlkM2UtOTJkNzBiM2U1NjEwIiwidCI6IjJjM2Q1MTBjLWE2YjktNGY5NS04ZjY0LWVhNmVlOTNkNGVlOSJ9)
### Insights:

•	Distribution by rider Type

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/1127ba1d-c5b5-4708-98be-1c2d30a3c701)

From the SQL query, we’ve determined that member rides took a total of 3456688 rides, making up 62.11% of total rides  while casual riders took 2108924 rides making up 37.89%. Notably, the average ride length for casual rides at 20.72 minutes, which is approximately 1.7 times longer than that of member riders, which is 12.36 minutes. (surprisingly, the average ride length for casual ride is way longer than member rider).

•	Distribution by rider and bike Type

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/1d375ff2-0586-4a75-854a-0eee8f610cbe)

As we can see from the above graph, both groups of riders prefer electric bikes over classic bikes, followed by classic and docked bikes, but member riders use classic bike(1.67M/(1.67M+0.78)=68.2%) at a higher proportion compared to member riders use electric bikes(1.79M/(1.79M+1.21M)=59.7%). Casual riders intended to use more electric bike than classic bike.


•	Member VS Casual rides in a year

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/0fb2a7dc-5914-45c1-bc8f-7829e07c3117)

From the line graph above, it’s evident that both user groups exhibit a similar trend. Both groups prefer riding bikes between March and late Aug, with lower usage during the months from late September to February, indicating a strong seasonality. I believe this decline in suage during wither months is due to unfavorable biking conditions in Chicago. Member rides maintain a more consistent and steadier trend compared to sharp decline in usage seen among casual riders, particularly in August. Now, lets’ dive deeper into how these two groups utilize different bike types throughout the year.


•	Type of bikes usage for both riders


![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/7735e4b6-6194-4d83-a407-0183d2687beb)

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/61bf3184-e057-4eda-8fb6-45ceb85abe63)


From the left line graph above, we can infer that member riders tended to use classic and electric bikes from March to the end of October. In contrast, casual riders preferably used electric bikes instead of the other two from March to the end of September. However, classic bike usage significantly dropped since the end of July, while electric bike usage continued to climb, reaching another peak in August. 
(Hypothesis: The end of the travel season is in September, so there were travelers using bikes for tours?)  Let’s look at the next graph and see what insights we can glean)


•	Weekly rides.

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/c239139d-1543-4bc5-9d12-0741950fef1a)

From the above graph, it’s evident that member riders consistently used bikes from Monday to Friday (Hypothesis: Member riders use bikes for commuting?) and experienced a drop during the weekend. In contrast, casual riders showed steady weekday usage, followed by a significant increase on Saturdays and a slight decline on Sundays. This trend may be correlated with the average ride length for casual riders, suggesting that many travelers take bike tours on the weekends. As we are restricted from accessing private information, additional insights are needed to support my hypothesis.


•	Time of day rides

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/be618511-0730-4e99-94b7-b647af266be6)

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/85b670cf-a4fa-41ce-b5b7-d229ca25492c)

From the line graph above, it’s evident that member riders primarily use bikes for their daily commute, as indicated by the peak in the relationship line during work commuting hours at 8AM and 5PM, followed by a significant drop at other times. In contrast, casual riders show a different pattern, with bike usage gradually increasing and reaching its peak at 5PM, followed by a more gradual decline.
Two groups of riders showed entirely different patterns on weekdays, in comparison to member riders, the number of casual riders continued to increase, reaching it’s peak at 5 PM, followed by a significant drop. Durning the weekend, these two groups of riders displayed a similar trend, indicating that member riders and casual riders engaged in similar activities on weekends.

(How can we firmly prove my hypothesis: If member riders majorly used the bike for commuting while casual riders for leisure tours then we should be able to identify distinct patterns by analyzing the starting and ending locations of their rides from the map)



•	Member riders starting/ending stations.

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/f96119bb-0d5a-4e44-9a54-cde2c568507e)

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/bda0740f-06e4-41ce-bf8b-dacb744043aa)

As we can see the top 10 starting stations for member riders are located near the commercial buildings district (I conducted a search on the google map to determine the location of the commercial buildings in Chicago). Interestingly, the top 10 of start and end stations are the same providing evidence that member riders used bike for their daily commute, traveling from their residences to their workplace.


•	Casual riders starting/ending stations.

![image](https://github.com/ianfang0131/Google_Cyclistic/assets/124013330/f5f6dcd6-9820-4b75-b2bb-c5846fe279ce)

As we can see above, the starting and ending stations for casual riders are near the water, which indicated that casual riders prefer spending time near the lake and water.




### Summary of analysis:

(How annual member and casual used bikes differently)
•	Casual riders used bikes much longer than member riders on average. 

•	Electric bike is the most popular bike used by both member and casual riders.

•	Member riders tended to use classic and electric bikes from March to the end of October. In contrast with Casual riders, they preferably used electric bikes from March to the end of October.

•	Member riders majorly used bike for commuting from Monday to Friday reaching peak at 8AM and 5PM respectively while casual riders used bikes for leisure tours during the weekend.



## Recommendations/Share:

•	We should expand our membership product lines, such as ‘Season Pass’ and ‘Monthly Pass’ we are aware of the high bike demand season, which extends from spring to late September. This presents a significant market opportunity for converting casual riders into seasonal members. Similarly, we can introduce a weekend promotion, such as the ‘Weekend Pass,’ offering unlimited access to all bikes during weekends for an entire year. This idea is based on the observation that these two groups of riders exhibit similar trends and engage in similar activities on weekends.

•	Since we already know that the summer months are the busiest of the year, we should utilize digital media to encourage casual riders to become members in the early months leading up to summer. Furthermore, as we’re aware that casual riders use bikes for tours near the lake, we can consider advertising on billboards in the surrounding areas for a few months.

•	Lastly, since we already know that the top 10 stations for casual riders are located near the water, we can place additional resources there, such as station billboards, to attract more casual riders’ attention. Additionally, we can launch a reward program, offering incentives such as free tickets, to encourage casual riders to convert into member riders.

### Uncertainty:
Due to lack of information about casual riders, we’re unable to determine the percentage of casual riders who are either Chicago residents or tourists. 










