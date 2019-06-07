SELECT
    projeto.Num,
    projeto.Nome,
    projeto.DepNum,
    departamento.Nome,
    empregado.Nome,
    empregado.Endereco,
    empregado.DataNasc
FROM
    projeto,
    departamento,
    empregado
WHERE
    projeto.Local = 'SALVADOR' AND
    empregado.Ident = departamento.IdentGer AND
    projeto.DepNum = departamento.Num;