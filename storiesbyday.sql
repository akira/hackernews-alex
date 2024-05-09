SELECT
  EXTRACT(YEAR FROM post_date) AS year,
  EXTRACT(MONTH FROM post_date) AS month,
  author,
  COUNT(*) AS num_stories
FROM fh-bigquery.hackernews.stories
GROUP BY 1, 2, 3
ORDER BY year, month, num_stories DESC