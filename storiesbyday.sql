SELECT
  EXTRACT(DAYOFYEAR FROM post_date) AS dayofyear,
  COUNT(id) AS num_stories
FROM fh-bigquery.hackernews.stories
GROUP BY dayofyear
ORDER BY num_stories DESC
LIMIT 10