INSERT INTO
	categoria (id, nome)
VALUES
	(1, 'Teclado'),
	(2, 'Mouse'),
	(3, 'Monitor'),
	(4, 'Processador'),
	(5, 'GPU'),
	(6, 'Gabinete'),
	(7, 'Placa mãe'),
	(8, 'Memória RAM');

INSERT INTO
	produtos (
		id,
		nome,
		descricao,
		preco,
		quantidade,
		fk_categoria_id,
		url_imagem
	)
VALUES
	(
		1,
		'Teclado com fio',
		'Confiável e pronto para usar, este teclado com fio oferece uma conexão estável e digitação precisa para todas as suas tarefas.',
		25.0,
		10,
		1,
		'teclado.png'
	),
	(
		2,
		'Mouse com fio',
		'Este mouse com fio oferece precisão e confiabilidade para todas as suas tarefas.',
		10.0,
		10,
		2,
		'mouse.png'
	),
	(
		3,
		'Monitor 22 Polegadas Full HD',
		'Desfrute de imagens nítidas e vibrantes com este monitor Full HD de 22 polegadas. Ideal para trabalho, estudo e entretenimento.',
		350.0,
		10,
		3,
		'monitor_22.png'
	),
	(
		4,
		'Intel Core i5 3330',
		'O Intel Core i5-3330 é um processador quad-core da 3ª geração, ideal para computadores de mesa, oferecendo desempenho sólido para tarefas do dia a dia e multitarefas.',
		150.0,
		10,
		4,
		'intel_i5_3330.png'
	),
	(
		5,
		'AMD FX-4300',
		'O AMD FX-4300 é um processador quad-core de 3.8GHz, ideal para PCs mais antigos, oferecendo desempenho básico para uso diário e jogos que não exigem muito.',
		160.0,
		10,
		4,
		'amd_fx.png'
	),
	(
		6,
		'Placa de vídeo - MSI ATI Radeon HD 5450',
		'A MSI ATI Radeon HD 5450 é uma placa de vídeo de baixo perfil projetada para oferecer desempenho gráfico básico e funcionalidade de vídeo de alta definição.',
		150.0,
		10,
		5,
		'msi_5450.png'
	),
	(
		7,
		'Placa de vídeo RX 550 4gb',
		'A RX 550 é uma placa de vídeo que pode rodar diversos jogos, mas com configurações e resoluções mais baixas, especialmente em jogos mais recentes e exigentes.',
		400.0,
		10,
		5,
		'rx550.png'
	),
	(
		8,
		'Placa de vídeo - MSI GTX 1650',
		'A GTX 1650 é uma placa de vídeo de entrada, adequada para jogos em Full HD (1080p) com configurações gráficas médias a baixas, sendo uma boa opção para quem busca um bom custo-benefício.',
		1200.0,
		10,
		5,
		'msi_1650.png'
	),
	(
		9,
		'Gabinete Gamer',
		'Gabinete com led.',
		350.0,
		10,
		6,
		'gabinete_games.png'
	),
	(
		10,
		'Gabinete',
		'Gabinete comum.',
		70.0,
		10,
		6,
		'gabinete.png'
	),
	(
		11,
		'Placa mãe lga 1155 b75',
		'Placa mãe para processadores Intel soquete lga 1155 com chipset b75.',
		300.0,
		10,
		7,
		'placa_mae_1155_b75.png'
	),
	(
		12,
		'Placa mãe Socket AM3+',
		'Placa mãe para processadores AMD soquete AM3+.',
		300.0,
		10,
		7,
		'placa_mae_am3+.png'
	),
	(
		13,
		'Memória ram 8gb DDR3',
		'Memória ram 8gb DDR3 com frequência de 1333 MHz.',
		60.0,
		10,
		8,
		'ram_ddr3.png'
	),
	(
		14,
		'Memória ram 8gb DDR4',
		'Memória ram 8gb DDR4 com frequência de 3200 MHz.',
		150.0,
		10,
		8,
		'ram_ddr4.png'
	);