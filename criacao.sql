CREATE DATABASE bd_sonho_doce;

USE bd_sonho_doce;

CREATE TABLE cliente(
	cpf VARCHAR(14) NOT NULL PRIMARY KEY,
    nome_cliente VARCHAR(30) NOT NULL,
    endereco_cliente VARCHAR(60) NOT NULL
);

CREATE TABLE compra(
	id_compra INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    status_compra VARCHAR(30) NOT NULL,
    forma_pagamento VARCHAR(20) NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    data_compra DATE NOT NULL,
    cliente_cpf VARCHAR(14) NOT NULL,
    funcionario_matricula INT NOT NULL
);

CREATE TABLE produto(
	id_produto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descricao_produto VARCHAR(20) NOT NULL,
    tipo VARCHAR(15),
    nome_produto VARCHAR(45) NOT NULL,
    valor_unitario DECIMAL(10,2)
);

CREATE TABLE funcionario(
	matricula INT NOT NULL PRIMARY KEY,
    nome_funcionario VARCHAR(30) NOT NULL,
    encomendas INT NOT NULL
);

CREATE TABLE item_da_compra(
	id_produto INT NOT NULL,
    id_compra INT NOT NULL,
    quantidade INT NOT NULL
);

ALTER TABLE compra
	ADD CONSTRAINT fk_compra_cliente
    FOREIGN KEY (cliente_cpf)
    REFERENCES cliente(cpf)
;

ALTER TABLE compra
	ADD CONSTRAINT fk_compra_funcionario
    FOREIGN KEY(funcionario_matricula)
    REFERENCES funcionario (matricula)
;

ALTER TABLE item_da_compra
	ADD CONSTRAINT fk_itemCompra_compra
    FOREIGN KEY (id_compra)
    REFERENCES compra(id_compra)
;

ALTER TABLE item_da_compra
	ADD CONSTRAINT fk_itemCompra_produto
    FOREIGN KEY (id_produto)
    REFERENCES produto(id_produto)
;