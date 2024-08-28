## Project Overview
This project analyzes social media usage patterns and user demographics to uncover insights into user behavior, engagement, and the potential impacts on productivity and satisfaction. The project uses SQL to explore and analyze data from two primary tables: social_media_usage and users.


## Data Description

### Table 1: Social Media Usage

| Column Name          | Description                                                                                                     |
|----------------------|-----------------------------------------------------------------------------------------------------------------|
| UserID              | Unique identifier assigned to each user.                                                                        |
| Platform| The specific social media platform the user interacted with, such as Facebook, Instagram, or YouTube.           |
| Total_Time_Spent     | The total amount of time (in minutes) the user spent on the social media platform during a specified period.     |
| Number_of_sessions       | The total number of distinct sessions or logins the user had on the platform.                                    |
| Video ID             | Unique identifier assigned to each video viewed by the user.                                                     |
| video_category       | The category or genre of the video content, such as Music, Education, or Entertainment.                          |
| video_length         | The total duration of the video content viewed by the user, measured in minutes.                                 |
| Engagements          | The total number of user interactions with the video, including likes, comments, and shares.                     |
| Time_spent_on_video  | The amount of time (in minutes) the user spent watching the specific video.                                      |
| Number of videos watched | The total number of videos the user watched during a specified period.                                           |
| scroll rate          | The rate at which the user scrolls through the feed or content, typically measured in pixels per second.         |
| Frequency            | What time of the day  user accesses the platform, such as Morning, Evening or Night                            |
| ProductivityLoss    | A score representing the degree to which the user’s productivity was affected by social media usage.             |
| Satisfaction         | A score representing the user’s satisfaction level with their social media experience, on a scale from 0 to 10.  |
| watch_reason         | The primary reason the user watched the video, such as for Entertainment, Learning, or Social Interaction.       |
| device_type          | The type of device the user used to access the platform, such as Mobile, Tablet, or Desktop.                     |
| OS         | The Type of operating system used by user                     |
| watch_Time           | The time when the user watched the video                         |
| self_control         | A score representing the user’s level of self-control regarding their social media usage, on a scale from 0 to 10.|
| Addiction_level      | A score representing the user's addiction level to social media, on a scale from 0 to 10.                        |
| CurrentActivity     | The activity the user was engaged in while using social media           |
| ConnectionType      | The type of internet connection used by the user, such as Wi-Fi or Mobile Data.                                  |

### Table 2: Users

| Column Name   | Description                                                                                  |
|---------------|----------------------------------------------------------------------------------------------|
| UserID       | Unique identifier assigned to each user.                                                     |
| Age          | The age of the user.                                                                         |
| Gender        | The gender of the user, such as Male, Female, or Other.                                  |
| Location      | The geographic location of the user                      |
| Income        | The total income of the user, typically measured annually.                                    |
| Debt          | Indicates whether the user is in debt or not, with values being True or False                                                  |
| owns_property | Indicates whether the user owns any property, with values being True (owns) or False (does not own). |
| profession    | The user’s occupation or profession.                                                         |
| demographics  | Additional demographic information about the user|

## Project Goals
Behavioral Insights: Understand the relationship between social media usage patterns and user satisfaction, productivity, and self-control.

Demographic Analysis: Explore how demographic factors influence social media behavior and platform preferences.

Engagement Metrics: Analyze engagement levels with different types of content and how they correlate with user demographics.

## Conclusion
This project provides a comprehensive analysis of social media usage and its impact on various aspects of user behavior and satisfaction. By combining insights from both usage data and demographic information, this analysis can help identify trends and patterns that are valuable for understanding the broader implications of social media on society.







