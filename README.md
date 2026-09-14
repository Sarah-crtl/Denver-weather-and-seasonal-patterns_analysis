# Denver Weather & Seasonal Patterns Analysis — 2018

## Overview

This project analyzes daily weather observations from Denver International Airport during 2018.

Using SQL in Google BigQuery, I analyzed temperature, precipitation, snow depth, wind speed, sea-level pressure, and dew point to identify seasonal patterns and relationships between weather conditions.

## Analysis Questions

1. How did temperature change throughout 2018?
2. How did precipitation and snow depth vary throughout the year?
3. What relationships exist between temperature and other weather conditions?

## Tools

- Google BigQuery
- SQL
- Power BI
- GitHub

## Key Findings

## Key Findings

- **Summer had the highest temperatures**, with August, July, and June recording the highest average temperatures of the year.

- **May recorded the highest precipitation**, while the greatest snow depth was observed during the warmer months of May through August.

- **Temperature and dew point showed a positive relationship**, with dew point generally increasing as temperature increased.

## Dashboard

![Denver Weather Dashboard](images/denver-weather-dashboard.png)

## Project Structure

```text
denver-weather-analysis/
│
├── README.md
│
├── sql/
│   ├── 01_data_exploration.sql
│   ├── 02_temperature_analysis.sql
│   ├── 03_precipitation_snow_analysis.sql
│   └── 04_weather_relationships.sql
│
└── images/
    └── denver-weather-dashboard.png

