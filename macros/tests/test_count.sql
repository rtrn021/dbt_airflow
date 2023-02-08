{% test test_count(model) %}

with table_count as (
select count(*) as t_count from {{model}}
)

SELECT *
FROM (
  SELECT t_count,
         CASE WHEN t_count = 0 THEN 1 END as result
  FROM table_count
) as subquery
WHERE result IS NOT NULL


{% endtest %}