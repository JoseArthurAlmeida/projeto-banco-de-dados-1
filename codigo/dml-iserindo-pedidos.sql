INSERT INTO
	pedidos
	(id, data, valor, fk_usuario_id)
VALUES

	(1, '2025-11-20', 35.00, 2),
	(2, '2025-11-21', 640.00, 3),
	(3, '2025-11-22', 2200.00, 4);

-- Inserindo os itens de cada pedido na tabela 'item_pedido'

INSERT INTO
	item_pedido
	(id, quantidade, preco_unitario, fk_pedidos_id, fk_produtos_id)
VALUES
	-- Itens do Pedido 1 (fk_pedidos_id = 1)
	(1, 1, 25.00, 1, 1),   -- 1x Teclado com fio (ID 1)
	(2, 1, 10.00, 1, 2),   -- 1x Mouse com fio (ID 2)

	-- Itens do Pedido 2 (fk_pedidos_id = 2)
	(3, 1, 150.00, 2, 4),  -- 1x Intel Core i5 3330 (ID 4)
	(4, 1, 300.00, 2, 11), -- 1x Placa mãe lga 1155 b75 (ID 11)
	(5, 2, 60.00, 2, 13),  -- 2x Memória ram 8gb DDR3 (ID 13) -> 120.00
	(6, 1, 70.00, 2, 10),  -- 1x Gabinete comum (ID 10)

	-- Itens do Pedido 3 (fk_pedidos_id = 3)
	(7, 1, 1200.00, 3, 8), -- 1x Placa de vídeo - MSI GTX 1650 (ID 8)
	(8, 1, 350.00, 3, 9),  -- 1x Gabinete Gamer (ID 9)
	(9, 2, 150.00, 3, 14), -- 2x Memória ram 8gb DDR4 (ID 14) -> 300.00
	(10, 1, 350.00, 3, 3); -- 1x Monitor 22 Polegadas Full HD (ID 3)