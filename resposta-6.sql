SELECT e.Nome, e.Sexo, d.Nome
FROM empregado e, dependente d
WHERE
    e.Ident = d.IdentEmp AND
    e.Nome = d.Nome AND
    e.Sexo = d.Sexo;