create database sql_project;
USE sql_project;
SELECT * FROM social_media_usage;
SELECT * FROM users;

-- 1 Average time spent on social media platforms daily 
SELECT platform, AVG(Total_Time_Spent) as avg_time_spent_per_day 
FROM social_media_usage 
GROUP BY platform 
ORDER BY  avg_time_spent_per_day DESC;

-- 2 Correlation between profession and Time wasted
SELECT u.Profession , AVG(s.Total_Time_Spent) as avg_time_wasted 
FROM users as u 
JOIN social_media_usage as s ON u.UserID = s.UserID 
WHERE ProductivityLoss >5 
GROUP BY profession 
ORDER BY avg_time_wasted DESC;

-- 3 Time Spent by Age group
SELECT u.Age, SUM(s.Total_Time_Spent) as total_time_spent 
FROM users as u 
JOIN social_media_usage as s ON u.UserID = s.UserID 
GROUP BY u.Age 
ORDER BY u.Age;

-- 4 Time Spent on Different Content
SELECT Video_Category, SUM(Total_Time_Spent) as total_time_spent 
FROM social_media_usage 
GROUP BY Video_Category 
ORDER BY total_time_spent DESC;

-- 5 Platform popularity by gender 
SELECT s.Platform, u.Gender, COUNT(*) as user_count 
FROM users as u 
JOIN social_media_usage as s ON u.UserID = s.UserID 
GROUP BY s.Platform, u.Gender 
ORDER BY user_count DESC; 

-- 6 Income v/s Productivity loss
SELECT  u.Income, ROUND(AVG(s.ProductivityLoss),1) as avg_productivity_loss  
FROM users as u 
JOIN social_media_usage as s ON u.UserID = s.UserID 
GROUP BY u.income 
ORDER BY u.income;

-- 7 Location Based Usage
SELECT u.Location , SUM(s.Total_Time_Spent) as total_time_spent 
FROM users as u 
JOIN social_media_usage as s ON u.UserID = s.UserID 
GROUP BY u.Location 
ORDER BY total_time_spent;

-- 8 Video Category Preference by Age and Gender
SELECT u.Age, u.Gender , s.Video_Category , COUNT(*) as preference_count 
FROM users as u 
JOIN social_media_usage as s ON u.UserID = s.UserID 
GROUP BY u.Age, u.Gender, s.Video_Category 
ORDER BY preference_count DESC;

-- 9 Self Control v/s Addiction Level
SELECT s.self_Control, s.Addiction_Level , COUNT(*) as user_count 
FROM social_media_usage as s 
GROUP BY self_Control, addiction_level 
ORDER BY self_control, addiction_level;

-- 10 User count based on watch reason
SELECT Watch_Reason , COUNT(*) as user_count 
FROM  social_media_usage 
GROUP BY Watch_Reason 
ORDER BY  user_count DESC;

-- 11 Device Type Usage
SELECT s.DeviceType, u.Age, u.Gender, COUNT(*) as usage_count 
FROM social_media_usage as s 
JOIN users as u ON s.UserID = u.UserID 
GROUP BY s.DeviceType , u.Age, u.Gender 
ORDER BY usage_count DESC;

-- 12 Connection Type impact
SELECT ConnectionType, SUM(Total_Time_Spent) as total_time_spent  
FROM social_media_usage 
GROUP BY ConnectionType 
ORDER BY total_time_spent DESC;

-- 13 Addiction Level by Age and Gender
SELECT u.Age, u.Gender, s.Addiction_Level, COUNT(*) as user_count 
FROM users as u 
JOIN social_media_usage as s ON u.UserID = s.UserID 
GROUP BY u.Age, u.Gender, s.Addiction_Level 
ORDER BY  user_count DESC;

-- 14 Trending Video Categories
SELECT Video_Category, COUNT(*) as watch_count 
FROM social_media_usage 
GROUP BY Video_Category 
ORDER BY watch_count DESC;

-- 15 Social Media Platform  Trends by Age group
SELECT u.Age, s.platform, COUNT(*) as usage_count 
FROM users as u 
JOIN social_media_usage as s ON u.UserID = s.UserID 
GROUP BY u.Age, s.platform 
ORDER BY usage_count DESC;

-- 16 User count based on frequency
SELECT Frequency, COUNT(*) as user_count 
FROM social_media_usage 
GROUP BY Frequency 
ORDER BY user_count DESC;

-- 17 User with Above average engagements on specific platform
SELECT u.UserID, u.Age,u.Gender , s.Platform, s.Engagement
FROM users as u
JOIN social_media_usage as s  ON u.UserID = s.UserID
WHERE s.Engagement > (
	SELECT AVG(Engagement)
    FROM social_media_usage
    WHERE Platform = "Facebook"
    )
AND s.Platform = "Facebook";

-- 18 Users with high addiction levels
CREATE VIEW High_AddictionUsers AS
SELECT u.UserID, u.Age, u.Gender, u.Location, s.Platform, s.Addiction_Level
FROM users as u
JOIN social_media_usage as s ON u.UserID = s.UserID
WHERE s.Addiction_Level > 5;

SELECT * FROM High_AddictionUsers;




