SELECT toss_decision,
       COUNTIF(winner IS NOT NULL) AS matches_won,
       ROUND(COUNTIF(winner IS NOT NULL) * 100.0 / COUNT(*), 2) AS win_percentage
FROM sonorous-house-468405-e2.matches_kaggle.matches
GROUP BY toss_decision;
