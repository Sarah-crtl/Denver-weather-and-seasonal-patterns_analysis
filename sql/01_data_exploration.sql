--Denver Weather and Seasonal Patterns Analysis
--Data Exploration

SELECT *
FROM project-2-504318.global_surface_data.surface_levels
LIMIT 20;

SELECT
COUNT(*) AS total_rows
FROM project-2-504318.global_surface_data.surface_levels

SELECT
  MIN(DATE) AS start_date,
  MAX(DATE) AS end_date
FROM project-2-504318.global_surface_data.surface_levels
