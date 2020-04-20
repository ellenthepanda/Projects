SELECT COUNT(uid), DATE_PART(y, date_of_birth) AS year
FROM analytics.user
WHERE date_of_birth >= '2020-04-20'
GROUP BY year
ORDER BY year DESC;
