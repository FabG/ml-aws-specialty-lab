SELECT gender, (COUNT(gender) * 100.0 / (SELECT COUNT(*) FROM fab_bucket_user_data)) AS percent
FROM fab_bucket_user_data
GROUP BY gender;
