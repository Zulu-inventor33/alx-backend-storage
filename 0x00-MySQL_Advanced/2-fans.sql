-- SQL script to rank country origins of bands by the number of fans

-- Select the country origin and sum of fans from the bands table
-- Group by origin to aggregate the fans for each country
-- Order the results by the total number of fans in descending order
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
