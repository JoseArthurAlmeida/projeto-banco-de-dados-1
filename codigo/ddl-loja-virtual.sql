CREATE TABLE usuario (
	id INTEGER PRIMARY KEY,
	email VARCHAR(100),
	nome VARCHAR(100),
	senha VARCHAR(100)
);

CREATE TABLE pedidos (
	id INTEGER PRIMARY KEY,
	data DATE,
	valor NUMERIC(10,2),
	fk_usuario_id INTEGER
);

CREATE TABLE produtos (
	id INTEGER PRIMARY KEY,
	quantidade INTEGER,
	nome VARCHAR(100),
	preco NUMERIC(10,2),
	descricao VARCHAR(255),
	url_imagem VARCHAR(255)
);

CREATE TABLE categoria (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(50)
);

CREATE TABLE avaliacao (
	id INTEGER PRIMARY KEY,
	comentario VARCHAR(255),
	nota INTEGER,
	data_avaliacao DATE,
	fk_produtos_id INTEGER,
	fk_usuario_id INTEGER
);

CREATE TABLE item_pedido (
	id INTEGER PRIMARY KEY,
	quantidade INTEGER,
	preco_unitario NUMERIC(10,2),
	fk_pedidos_id INTEGER,
	fk_produtos_id INTEGER
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