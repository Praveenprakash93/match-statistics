SELECT bowler,
       ROUND(SUM(total_runs) / (COUNT(ball) / 6.0), 2) AS economy_rate
FROM sonorous-house-468405-e2.deliveries_kaggle.deliveries
WHERE `over` >= 16
GROUP BY bowler
ORDER BY economy_rate ASC
LIMIT 5;
