SELECT Nome, Endereco
FROM empregado
WHERE empregado.DepNum = (
    SELECT Num
    FROM departamento
    WHERE Nome = 'VENDAS'
);