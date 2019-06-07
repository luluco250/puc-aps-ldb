SELECT emp.Nome, sup.Nome
FROM empregado emp, empregado sup
WHERE sup.Ident = emp.SuperIdent;