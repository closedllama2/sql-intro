-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


SELECT t.name, p.first_name, p.last_name, sum(home_runs)
FROM players as p
LEFT JOIN stats as s
on p.id = s.player_id
LEFT JOIN teams as t
on t.id = s.team_id
WHERE t.year = 2019
GROUP BY 1,2,3
ORDER BY sum(home_runs) DESC
LIMIT 1;