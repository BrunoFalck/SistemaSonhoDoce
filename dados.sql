USE bd_sonho_doce;

INSERT INTO cliente
	(cpf, nome_cliente, endereco_cliente)
    VALUES
    ('12345678910', 'José Barreto', 'SQN 212, Bloco F, Apartamento 504 – Asa Norte'),
	('65432198766', 'André Varella', 'SHIS QI 17, Conjunto 8, Casa 22 – Lago Sul'),
    ('65498732111', 'Júlia Ferreira', 'CLN 312, Bloco B, Loja 14 – Asa Norte'),
    ('98765432100', 'Marcos Antônio Francisco', 'SQS 411, Bloco C, Apartamento 102 – Asa Sul'),
    ('13579246800', 'Janette Silveira', 'QNM 18, Conjunto H, Casa 05 – Ceilândia Norte'),
    ('66677788899', 'Marcela Maralto', 'QN 07, Conjunto D, Casa 19 – Riacho Fundo I'),
    ('11122233344', 'Sérgio Pires', 'QR 406, Conjunto 3, Casa 12 – Samambaia Sul'),
    ('54328765090', 'Nícolas Daredo', 'QI 12, Bloco C, Apartamento 304 – Guará I'),
    ('12332145666', 'Miriam Fernandes', 'QNA 21, Lote 08, Casa 07 – Taguatinga Norte'),
    ('74747838389', 'Ana Cristina Ximenes', 'SQSW 305, Bloco G, Apartamento 202 – Sudoeste');
    
INSERT INTO produto
	(descricao_produto, tipo, valor_unitario, nome_produto)
    VALUES
    ('Brigadeiro Gourmet', 'doce', 4.00, 'Brigadeiro Gourmet'),
	('Bolo de Cenoura', 'bolo', 22.00, 'Bolo de Cenoura com Cobertura de Chocolate'),
    ('Torta de Limão', 'torta', 12.00, 'Torta de Limão'),
    ('Cookie de Chocolate', 'biscoito', 5.00, 'Cookie'),
    ('Cupcake de Baunilha', 'cupcake', 8.00, 'Cupcake de Baunilha com Buttercream'),
    ('Macaron de Framboesa', 'doce', 7.00, 'Macaron de Framboesa'),
    ('Pão de Mel Recheado', 'doce', 5.50, 'Pão de Mel'),
    ('Cheesecake', 'bolo', 14.00, 'Cheesecake de Frutas Vermelhas'),
    ('Brownie Tradicional', 'brownie', 10.00, 'Brownie Tradicional'),
    ('Mini Churros', 'doce', 1.50, 'Mini Churros Recheados');

INSERT INTO funcionario
	(matricula, nome_funcionario, encomendas)
    VALUES
    (001, 'Isabela Barros', 2),
	(002, 'Bruno Falcão', 2),
    (003, 'Nícolas Mendonça', 0),
    (004, 'Laura Pinheiro', 1),
    (005, 'João Gabriel Salles', 1),
    (006, 'Murilo Costa', 0),
    (007, 'Sabrina Macedo', 1),
    (008, 'Orlando Januário', 2),
    (009, 'Arlindo Teodoro', 1),
    (010, 'Vanessa Silva', 0);
    
INSERT INTO compra
	(status_compra, forma_pagamento, valor_total, data_compra, cliente_cpf, funcionario_matricula)
    VALUES
    ('PAGA', 'PIX', 15.00, '2025-09-14', '74747838389', 001),
	('PAGA', 'PIX', 20.00, '2025-09-25', '12332145666', 001),
    ('PAGA', 'CREDITO', 14.00, '2025-09-27', '54328765090', 008),
    ('PAGA', 'PIX', 16.50, '2025-09-30', '11122233344', 009),
    ('PAGA', 'CREDITO', 14.00, '2025-10-05', '66677788899', 007),
    ('PAGA', 'DEBITO', 8.00, '2025-10-14', '13579246800', 008),
    ('PAGA', 'ESPECIE', 25.00, '2025-10-17', '98765432100', 002),
    ('PAGA', 'PIX', 12.00, '2025-10-25', '65498732111', 005),
    ('PAGA', 'CREDITO', 22.00, '2025-11-04', '65432198766', 004),
    ('PAGA', 'PIX', 40.00, '2025-11-05', '12345678910', 002);
    
INSERT INTO item_da_compra
	(id_produto, id_compra, quantidade)
    VALUES
    (10 , 1, 10),
	(9 , 2, 2),
    (8 , 3, 1),
    (7 , 4, 3),
    (6 , 5, 2),
    (5 , 6, 1),
    (4 , 7, 5),
    (3 , 8, 1),
    (2 , 9, 1),
    (1 , 10, 10);