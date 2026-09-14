--Precipiattion and snow analysis

--Monthly precipitation

SELECT
  EXTRACT(MONTH FROM DATE) AS month_number,
  FORMAT_DATE('%B', DATE) AS month,
  ROUND(SUM(PRCP), 2) AS total_precipitation
FROM project-2-504318.global_surface_data.surface_levels
GROUP BY
month_number,
month
ORDER BY
month_number;

--Months with the most precipitation

SELECT
  FORMAT_DATE('%B', DATE) AS month,
  ROUND(SUM(PRCP), 2) AS total_precipitation
FROM project-2-504318.global_surface_data.surface_levels
GROUP BY
month
ORDER BY
total_precipitation DESC;

--May had the most precipitation

--Average snow depth by month

SELECT
  EXTRACT(MONTH FROM DATE) AS month_number,
  FORMAT_DATE('%B', DATE) AS month,
  ROUND(AVG(SNDP), 2) AS average_snow_depth,
FROM project-2-504318.global_surface_data.surface_levels
GROUP BY 
month_number,
month
ORDER BY
month_number;

--Maximum snow depth by month

SELECT
  EXTRACT(MONTH FROM DATE) AS month_number,
  FORMAT_DATE('%B', DATE) AS month,
  ROUND(MAX(SNDP), 2) AS maximum_snow_depth,
FROM project-2-504318.global_surface_data.surface_levels
GROUP BY 
month_number,
month
ORDER BY
month_number;
