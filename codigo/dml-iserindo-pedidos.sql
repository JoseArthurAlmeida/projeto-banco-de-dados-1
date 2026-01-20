INSERT INTO
	pedidos
	(id, data, valor, fk_usuario_id)
	VALUES
		(1, '2025-11-20', 35.00, 2),
		(2, '2025-11-21', 640.00, 3),
		(3, '2025-11-22', 2200.00, 4);

INSERT INTO
	pedidos
	(id, data, valor, fk_usuario_id)
	VALUES
		(4, '2025-11-22', 510.00, 2);

INSERT INTO
	item_pedido
	(id, quantidade, preco_unitario, fk_pedidos_id, fk_produtos_id)
	VALUES
		-- Itens do Pedido 1 (fk_pedidos_id = 1)
		(1, 1, 25.00, 1, 1),
		(2, 1, 10.00, 1, 2),

		-- Itens do Pedido 2 (fk_pedidos_id = 2)
		(3, 1, 150.00, 2, 4),
		(4, 1, 300.00, 2, 11),
		(5, 2, 60.00, 2, 13),
		(6, 1, 70.00, 2, 10),

		-- Itens do Pedido 3 (fk_pedidos_id = 3)
		(7, 1, 1200.00, 3, 8),
		(8, 1, 350.00, 3, 9),
		(9, 2, 150.00, 3, 14),
		(10, 1, 350.00, 3, 3);

INSERT INTO
	item_pedido
	(id, quantidade, preco_unitario, fk_pedidos_id, fk_produtos_id)
	VALUES
		-- Itens do Pedido 4
		(11, 1, 150.00, 4, 4),
		(12, 1, 300, 4, 11),
		(13, 2, 60, 4, 13);