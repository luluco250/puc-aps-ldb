SELECT Sal * 1.1
FROM empregado e, trabalha_no t, projeto p
WHERE
    t.IdentEmp = e.Ident AND
    t.ProjNum = p.Num AND
    p.Nome = 'VENDAS DE NATAL 2018';