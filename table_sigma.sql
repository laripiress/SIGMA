CREATE TABLE usuarios (
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	senha VARCHAR(255) NOT NULL,
	perfil ENUM('Administrador','Tecnico') NOT NULL,
	status BOOLEAN NOT NULL DEFAULT TRUE,
	data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
	data_alteracao DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE auditorias(
	id_log INT AUTO_INCREMENT PRIMARY KEY,
	id_usuario INT NOT NULL,
	operacao VARCHAR(100) NOT NULL,
	tabela VARCHAR(100) NOT NULL,
	registro_afetado INT NOT NULL,
	data DATETIME DEFAULT CURRENT_TIMESTAMP,
	endereco_ip VARCHAR(45),
	
	CONSTRAINT fk_auditoria_usuario
		FOREIGN KEY (id_usuario)
		REFERENCES usuarios(id_usuario)
);

CREATE TABLE equipamentos(
	id_equipamento INT AUTO_INCREMENT PRIMARY KEY,
	patrimonio VARCHAR(50) NOT NULL UNIQUE,
	numero_serie VARCHAR(100) NOT NULL UNIQUE,
	fabricante VARCHAR(100) NOT NULL,
	modelo VARCHAR(100) NOT NULL,
	valor_aquisicao DECIMAL(10,2),
	localizacao VARCHAR(100) NOT NULL,
	vida_util INT,
	status ENUM('Ativo','Em manutenção','Inativo','Descartado') NOT NULL
);

CREATE TABLE configuracoes_hardware(
	id_configuracao INT AUTO_INCREMENT PRIMARY KEY,
	id_equipamento INT NOT NULL,
	placa_mae VARCHAR(100),
	processador VARCHAR(100),
	memoria VARCHAR(100),
	armazenamento VARCHAR(100),
	fonte VARCHAR(100),
	placa_video VARCHAR(100),
	observacoes TEXT,
	
		CONSTRAINT fk_configuracao_equipamento
			FOREIGN KEY (id_equipamento)
			REFERENCES equipamentos(id_equipamento)
);

CREATE TABLE manutencoes(
	id_manutencao INT AUTO_INCREMENT PRIMARY KEY,
	id_equipamento INT NOT NULL,
	id_usuario INT NOT NULL,
	tipo ENUM('Preventiva','Corretiva') NOT NULL,
	diagnostico TEXT,
	causa TEXT,
	solucao_aplicada TEXT,
	tempo_gasto DECIMAL(5,2),
	data_abertura DATETIME NOT NULL,
	data_encerramento DATETIME,
	observacoes_tecnicas TEXT,
	
	CONSTRAINT fk_manutencao_equipamento
		FOREIGN KEY (id_equipamento)
		REFERENCES equipamentos(id_equipamento),
		
	CONSTRAINT fk_manutencao_usuario
		FOREIGN KEY (id_usuario)
		REFERENCES usuarios(id_usuario)
);

CREATE TABLE itens_manutencao(
	id_item INT NOT NULL,
	id_peca INT NOT NULL,
	id_manutencao INT NOT NULL,
	quantidade INT NOT NULL,
	
	CONSTRAINT fk_item_peca
		FOREIGN KEY (id_peca)
		REFERENCES pecas(id_peca),
		
	CONSTRAINT fk_item_manutencao
		FOREIGN KEY (id_manutencao)
		REFERENCES manutencoes(id_manutencao)
);

CREATE TABLE pecas(
	id_peca INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	categoria VARCHAR(100),
	fabricante VARCHAR(100),
	estoque_minimo INT NOT NULL,
	estoque_atual INT NOT NULL
);

CREATE TABLE movimentacoes_estoque(
	id_movimentacao INT AUTO_INCREMENT PRIMARY ,
	id_peca INT NOT NULL,
	id_usuario INT NOT NULL,
	tipo ENUM('Entrada','Saida') NOT NULL,
	quantidade INT NOT NULL,
	data DATETIME DEFAULT CURRENT_TIMESTAMP,
	
	CONSTRAINT fk_movimentacao_peca
		FOREIGN KEY (id_peca)
		REFERENCES pecas(id_peca),

	CONSTRAINT fk_movimentacao_usuario
		FOREIGN KEY (id_usuario)
		REFERENCES usuarios(id_usuario)

);


CREATE TABLE planos_preventivos(
	id_plano INT AUTO_INCREMENT PRIMARY KEY,
	id_equipamento INT NOT NULL,
	periodicidade VARCHAR(50) NOT NULL,
	descricao TEXT,
	proxima_execucao DATE,
	
	CONSTRAINT fk_plano_equipamento
		FOREIGN KEY (id_equipamento)
		REFERENCES  equipamentos(id_equipamento)
);

CREATE TABLE upgrades_hardware(
	id_upgrade INT AUTO_INCREMENT PRIMARY KEY,
	id_equipamento INT NOT NULL,
	id_usuario INT NOT NULL,
	componente_substituido VARCHAR(100) NOT NULL,
	componente_instalado VARCHAR(100) NOT NULL,
	data DATETIME DEFAULT CURRENT_TIMESTAMP,
	
	CONSTRAINT fk_upgrade_equipamento
		FOREIGN KEY (id_equipamento)
		REFERENCES equipamentos(id_equipamento),
		
	CONSTRAINT fk_upgrade_usuario
		FOREIGN KEY (id_usuario)
		REFERENCES usuarios(id_usuario)
);

CREATE TABLE garantias(
	id_garantia INT AUTO_INCREMENT PRIMARY KEY,
	id_equipamento INT NOT NULL,
	fornecedor VARCHAR(100) NOT NULL,
	data_inicio DATE NOT NULL,
	data_fim DATE NOT NULL,
	observacao TEXT,
	
	CONSTRAINT fk_garantia_equipamento
		FOREIGN KEY (id_equipamento)
		REFERENCES equipamentos(id_equipamento)
);

