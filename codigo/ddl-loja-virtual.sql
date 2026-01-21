CREATE TABLE usuario (
	id INTEGER PRIMARY KEY,
	email VARCHAR(100) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	senha VARCHAR(100) NOT NULL
);

CREATE TABLE pedidos (
	id INTEGER PRIMARY KEY,
	data DATE NOT NULL DEFAULT CURRENT_DATE,
	valor NUMERIC(10, 2) NOT NULL
		CONSTRAINT chk_pedidos_valor_nao_negativo CHECK (valor >= 0),
	fk_usuario_id INTEGER NOT NULL
);

CREATE TABLE categoria (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE produtos (
	id INTEGER PRIMARY KEY,
	quantidade INTEGER NOT NULL
		CONSTRAINT chk_quantidade_nao_negativa CHECK (quantidade >= 0),
	nome VARCHAR(100) NOT NULL,
	preco NUMERIC(10, 2) NOT NULL
		CONSTRAINT chk_preco_nao_negativo CHECK (preco >= 0),
	descricao VARCHAR(255),
	fk_categoria_id INTEGER NOT NULL
);

CREATE TABLE avaliacao (
	id INTEGER PRIMARY KEY,
	comentario VARCHAR(255) NOT NULL,
	nota INTEGER NOT NULL
		CONSTRAINT chk_avaliacao_nota_intervalo CHECK (nota >= 1 AND nota <= 5),
	data_avaliacao DATE NOT NULL DEFAULT CURRENT_DATE,
	fk_produtos_id INTEGER NOT NULL,
	fk_usuario_id INTEGER NOT NULL
);

CREATE TABLE item_pedido (
	id INTEGER PRIMARY KEY,
	quantidade INTEGER NOT NULL
		CONSTRAINT chk_item_pedido_quantidade_positiva CHECK (quantidade > 0),
	preco_unitario NUMERIC(10, 2) NOT NULL
		CONSTRAINT chk_item_pedido_preco_nao_negativo CHECK (preco_unitario >= 0),
	fk_pedidos_id INTEGER NOT NULL,
	fk_produtos_id INTEGER NOT NULL
);

/* Se apagar usuario, apaga os pedidos dele */
ALTER TABLE pedidos ADD CONSTRAINT FK_pedidos_usuario
	FOREIGN KEY (fk_usuario_id)
		REFERENCES usuario (id)
		ON DELETE CASCADE;

/* IMPEDE apagar categoria se tiver produtos nela */
ALTER TABLE produtos ADD CONSTRAINT FK_produtos_categoria
	FOREIGN KEY (fk_categoria_id)
		REFERENCES categoria (id)
		ON DELETE RESTRICT;

/* Se apagar produto, apaga avaliações */
ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_produto
	FOREIGN KEY (fk_produtos_id)
		REFERENCES produtos (id)
		ON DELETE CASCADE;

/* Se apagar usuario, apaga avaliações dele */
ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_usuario
	FOREIGN KEY (fk_usuario_id)
		REFERENCES usuario (id)
		ON DELETE CASCADE;

/* Se apagar o PEDIDO, os itens somem junto */
ALTER TABLE item_pedido ADD CONSTRAINT FK_item_pedido_pedido
	FOREIGN KEY (fk_pedidos_id)
		REFERENCES pedidos (id)
		ON DELETE CASCADE;

/* IMPEDE apagar produto se ele já foi vendido em algum pedido */
ALTER TABLE item_pedido ADD CONSTRAINT FK_item_pedido_produto
	FOREIGN KEY (fk_produtos_id)
		REFERENCES produtos (id)
		ON DELETE RESTRICT;