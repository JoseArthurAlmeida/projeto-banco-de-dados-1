-- 1. Listar todos os produtos em ordem decrescente de preço.
SELECT id, nome, preco, quantidade
	FROM produtos
	ORDER BY preco DESC;

-- 2. Listar os produtos que contenha "Placa de vídeo" no nome
SELECT nome, preco
	FROM produtos
	WHERE nome ILIKE '%Placa de vídeo%';

-- 3. Listar as 5 avaliações mais recentes
SELECT comentario, nota, data_avaliacao
	FROM avaliacao
	ORDER BY data_avaliacao DESC
	LIMIT 5;

-- 4. Listar todos os pedidos feitos em uma data específica
SELECT id, valor, fk_usuario_id
	FROM pedidos
	WHERE data = '2025-11-22';

-- 5. Listar o produto e a categoria que ele pertence
SELECT
	p.nome AS produto,
	p.preco,
	c.nome AS categoria
	FROM produtos p
			 INNER JOIN categoria c ON p.fk_categoria_id = c.id;

-- 6. Listar todos os pedidos com o nome do usuário que os realizou.
SELECT
	pe.id AS pedido_id,
	pe.data,
	pe.valor,
	u.nome AS cliente
	FROM pedidos pe
			 INNER JOIN usuario u ON pe.fk_usuario_id = u.id;

-- 7. Detalhar todos os itens de um pedido específico
SELECT
	p.nome AS produto,
	ip.quantidade,
	ip.preco_unitario,
	(ip.quantidade * ip.preco_unitario) AS subtotal
	FROM item_pedido ip
			 INNER JOIN produtos p ON ip.fk_produtos_id = p.id
	WHERE ip.fk_pedidos_id = 3;

-- 8. Contar quantos produtos existem em cada categoria.
SELECT
	c.nome AS categoria,
	COUNT(p.id) AS total_de_produtos
	FROM categoria c
			 LEFT JOIN produtos p ON c.id = p.fk_categoria_id
	GROUP BY c.nome
	ORDER BY total_de_produtos DESC;

-- 9. Calcular a nota média de avaliação para cada produto que já foi avaliado.
SELECT
	p.nome AS produto,
	ROUND(AVG(a.nota), 2) AS media_de_notas,
	COUNT(a.id) AS total_avaliacoes
	FROM avaliacao a
			 INNER JOIN produtos p ON a.fk_produtos_id = p.id
	GROUP BY p.nome
	ORDER BY media_de_notas DESC;

-- 10. Listar o valor total gasto por cada cliente.
SELECT
	u.nome AS cliente,
	SUM(p.valor) AS total_gasto
	FROM usuario u
			 JOIN pedidos p ON u.id = p.fk_usuario_id
	GROUP BY u.nome
	ORDER BY total_gasto DESC;

-- 11. Listar clientes que gastaram mais de R$ 1.000,00.
SELECT
	u.nome AS cliente,
	SUM(p.valor) AS total_gasto
	FROM usuario u
			 INNER JOIN pedidos p ON u.id = p.fk_usuario_id
	GROUP BY u.nome
	HAVING SUM(p.valor) > 1000.00;

-- 12. Encontrar produtos que nunca foram vendidos
SELECT id, nome, quantidade
	FROM produtos
	WHERE id NOT IN (SELECT DISTINCT fk_produtos_id FROM item_pedido);

-- 13. Mostrar todas as avaliações com o nome do usuário e do produto avaliado.
SELECT
	u.nome AS cliente,
	p.nome AS produto,
	a.nota,
	a.comentario,
	a.data_avaliacao
	FROM avaliacao a
			 JOIN usuario u ON a.fk_usuario_id = u.id
			 JOIN produtos p ON a.fk_produtos_id = p.id
	ORDER BY a.data_avaliacao DESC;

-- 14. Listar os produtos com baixo estoque
SELECT id, nome, quantidade
	FROM produtos
	WHERE quantidade < 10
	ORDER BY quantidade;

-- 15. Listar os pedidos de um determinado cliente
SELECT
	p.id AS pedido_id,
	p.data,
	p.valor
	FROM pedidos p
			 JOIN usuario u ON p.fk_usuario_id = u.id
	WHERE u.id = 2
	ORDER BY p.data DESC;