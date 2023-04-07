-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT p.first_name, p.last_name, sum(s.hits) 
FROM players as p
LEFT JOIN stats as s
on p.id = s.player_id
WHERE p.last_name = "Bonds" AND p.first_name = "Barry"
GROUP BY 1,2;