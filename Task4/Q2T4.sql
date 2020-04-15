SELECT SUBSTRING(TO_CHAR(date_of_birth, 'YYYY-MM-DD'), 1, 4) AS year_of_birth,
      COUNT(date_of_birth) as count
FROM analytics.user
GROUP BY year_of_birth
ORDER BY year_of_birth ASC;
