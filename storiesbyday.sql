SELECT
  EXTRACT(YEAR FROM post_date) AS year,
  EXTRACT(MONTH FROM post_date) AS month,
  word,
  SUM(score) AS total_score
FROM fh-bigquery.hackernews.stories AS stories
GROUP BY 1, 2, 3
ORDER BY year, month, total_score DESC