SELECT batsman,
       ROUND(SUM(batsman_runs) * 100.0 / COUNT(ball), 2) AS strike_rate,
       ROUND(SUM(batsman_runs) / COUNT(DISTINCT match_id), 2) AS average_runs
FROM sonorous-house-468405-e2.deliveries_kaggle.deliveries
WHERE batsman_runs > 0
GROUP BY batsman
ORDER BY strike_rate DESC
LIMIT 5;
