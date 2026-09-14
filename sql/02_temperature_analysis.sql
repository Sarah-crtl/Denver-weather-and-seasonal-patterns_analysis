--temperatuere analysis

--Average temperature by month
SELECT 
  EXTRACT(MONTH FROM DATE) AS month_number,
  FORMAT_DATE('%B', DATE) AS month,
  ROUND(AVG(TEMP), 2) AS average_temperature
FROM project-2-504318.global_surface_data.surface_levels
GROUP BY
month_number,
month
ORDER BY
month_number;

--Warmest and coldest months
SELECT 
  FORMAT_DATE('%B', DATE) AS month,
  ROUND(AVG(TEMP), 2) AS average_temperature
FROM project-2-504318.global_surface_data.surface_levels
GROUP BY
month
ORDER BY
average_temperature DESC;

SELECT 
  FORMAT_DATE('%B', DATE) AS month,
  ROUND(AVG(TEMP), 2) AS average_temperature
FROM project-2-504318.global_surface_data.surface_levels
GROUP BY
month
ORDER BY
average_temperature ASC;

--Highest and lowest temperatures recorded
SELECT
  DATE,
  TEMP
FROM project-2-504318.global_surface_data.surface_levels
ORDER BY TEMP DESC
LIMIT 10;

SELECT
  DATE,
  TEMP
FROM project-2-504318.global_surface_data.surface_levels
ORDER BY TEMP ASC
LIMIT 10;
