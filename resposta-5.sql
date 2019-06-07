SELECT DISTINCT p.Num
FROM projeto p, empregado e, trabalha_no t, departamento d
WHERE e.Nome = 'Jose Dias' AND (
    (
        p.Num = t.ProjNum AND
        t.IdentEmp = e.Ident
    ) OR
    (
        d.IdentGer = e.Ident AND
        p.DepNum = d.Num
    )
);