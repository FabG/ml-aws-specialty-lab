SELECT age, COUNT(age) AS occurances
FROM fab_bucket_user_data
GROUP BY age
ORDER BY occurances DESC
LIMIT 5;
