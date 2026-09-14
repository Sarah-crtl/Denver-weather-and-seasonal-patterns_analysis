--Denver Weather Analysis
--Weather relationships analysis

-- Temperature and wind speed

SELECT
  EXTRACT(MONTH FROM DATE) AS month_number,
  FORMAT_DATE('%B', DATE) AS month,
  ROUND(AVG(TEMP), 2) AS average_temperature,
  ROUND(AVG(WDSP), 2) AS average_wind_speed,
FROM project-2-504318.global_surface_data.surface_levels
GROUP BY
month_number,
month
ORDER BY
month_number;

-- Temperature and sea-level pressure

SELECT
  EXTRACT(MONTH FROM DATE) AS month_number,
  FORMAT_DATE('%B', DATE) AS month,
  ROUND(AVG(TEMP), 2) AS average_temperature,
  ROUND(AVG(SLP), 2) AS average_sea_level_pressure,
FROM project-2-504318.global_surface_data.surface_levels
GROUP BY 
month_number,
month
ORDER BY
month_number;

--Temperature and dew point

SELECT
  EXTRACT(MONTH FROM DATE) AS month_number,
  FORMAT_DATE('%B', DATE) AS month,
  ROUND(AVG(TEMP), 2) AS average_temperature,
  ROUND(AVG(DEWP), 2) AS average_dew_point,
FROM project-2-504318.global_surface_data.surface_levels
GROUP BY 
month_number,
month
ORDER BY
month_number;
