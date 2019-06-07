SELECT *
FROM empregado e
WHERE
    e.DataNasc BETWEEN '1950-01-01' AND '1959-12-31';
    --e.DataNasc LIKE '%195%';