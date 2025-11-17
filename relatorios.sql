USE bd_sonho_doce;

-- -- Relatórios -- --

-- Lista de Clientes

SELECT nome_cliente
FROM cliente
ORDER BY nome_cliente;

-- Produtos e seus preços

SELECT nome_produto, valor_unitario
FROM produto
ORDER BY valor_unitario;

-- Vendas realizadas

SELECT data_compra, valor_total
FROM compra
ORDER BY data_compra;

-- -- Indicadores gerenciais -- --

-- Vendas realizadas em outubro de 2025

SELECT COUNT(data_compra) AS Vendas_Outubro
FROM compra
WHERE data_compra LIKE '2025-10-%';

-- Clientes que moram na Asa Norte

SELECT nome_cliente, endereco_cliente
FROM cliente
WHERE endereco_cliente LIKE '%Asa Norte%';

-- Funcionários que realizaram mais de uma encomenda

SELECT nome_funcionario, encomendas
FROM funcionario
WHERE encomendas > 1;
    