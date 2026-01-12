INSERT INTO
	avaliacao
	(id, comentario, nota, data_avaliacao, fk_produtos_id, fk_usuario_id)

VALUES
	-- Avaliações do Pedido 1 (Usuário ID 2 - Arthur)
	(1, 'Teclado simples e funcional. Ótimo custo-benefício.', 5, '2025-11-25', 1, 2),
	(2, 'Funciona bem, mas o material parece um pouco frágil.', 4, '2025-11-25', 2, 2),

	-- Avaliações do Pedido 2 (Usuário ID 3 - José)
	(3, 'Processador antigo, mas deu conta do recado para o que eu precisava. Chegou bem embalado.', 5, '2025-11-28', 4, 3),
	(4, 'As memórias funcionaram perfeitamente em dual channel.', 5, '2025-11-28', 13, 3),

	-- Avaliações do Pedido 3 (Usuário ID 4 - Mariana)
	(5, 'Placa de vídeo excelente para jogos em 1080p. Rodou tudo que eu queria. Recomendo!', 5, '2025-12-01', 8, 4),
	(6, 'O gabinete é bonito, mas achei o espaço interno um pouco apertado para organizar os cabos.', 4, '2025-12-01', 9, 4),

	-- Outro usuário avaliando, mesmo sem ter comprado, para mostrar que outros podem avaliar.
	(7, 'Tenho essa placa e é realmente muito boa. O preço aqui na loja está justo.', 5, '2025-12-02', 8, 3);