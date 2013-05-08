
CREATE  TABLE status (
	codigo	INTEGER NOT NULL,
	nome	VARCHAR(20) NULL,
	PRIMARY KEY (codigo) 
);

CREATE SEQUENCE seq_voluntario
CREATE  TABLE voluntario (
	codigo INTEGER NOT NULL ,
	status_codigo INTEGER NOT NULL ,
	nome VARCHAR(150) NULL ,
	email VARCHAR(100) NULL ,
	endereco VARCHAR(200) NULL ,
	bairro VARCHAR(100) NULL ,
	cep VARCHAR(10) NULL ,
	celular VARCHAR(15) NULL ,
	telefone VARCHAR(15) NULL ,
	certificacao_pmi BOOLEAN NULL ,
	associado_pmi BOOLEAN NULL ,
	conhece_pmbook BOOLEAN) NULL ,
	nivel_conhecimento_gp CHAR(1) NULL ,
	horas_disponiveis_mes INTEGER NULL ,
	outra_faculdade VARCHAR(100) NULL ,
	resumo_curriclo TEXT NULL ,
  PRIMARY KEY (codigo) ,
  INDEX fk_voluntario_status1_idx (status_codigo ASC) ,
  CONSTRAINT fk_voluntario_status1
    FOREIGN KEY (status_codigo)
    REFERENCES STATUS (codigo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE SEQUENCE seq_area_interesse
CREATE  TABLE area_interesse (
	codigo INTEGER NOT NULL ,
	nome VARCHAR(50) NULL ,
	descricao VARCHAR(200) NULL ,
	PRIMARY KEY (codigo)
);

CREATE  TABLE certificao_pmi (
	codigo INTEGER NOT NULL ,
	nome VARCHAR(45) NULL ,
  PRIMARY KEY (codigo) 
);

CREATE  TABLE certificao_pmi_voluntario (
	certificao_pmi_codigo INTEGER NOT NULL ,
	voluntario_codigo INTEGER NOT NULL ,
	  PRIMARY KEY (certificao_pmi_codigo, voluntario_codigo) ,
	  INDEX fk_certificao_pmi_has_voluntario_voluntario1_idx (voluntario_codigo ASC) ,
	  INDEX fk_certificao_pmi_has_voluntario_certificao_pmi1_idx (certificao_pmi_codigo ASC) ,
	  CONSTRAINT fk_certificao_pmi_has_voluntario_certificao_pmi1
		FOREIGN KEY (certificao_pmi_codigo)
		REFERENCES certificao_pmi (codigo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	  CONSTRAINT fk_certificao_pmi_has_voluntario_voluntario1
		FOREIGN KEY (voluntario_codigo)
		REFERENCES voluntario (codigo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);

CREATE  TABLE entidade_formacao (
	codigo INTEGER NOT NULL ,
	nome VARCHAR(100) NULL ,
	PRIMARY KEY (codigo) 
);

CREATE TABLE  habilidades (
	codigo INTEGER NOT NULL ,
	nome VARCHAR(100) NULL ,
	PRIMARY KEY (codigo)
);

CREATE voluntario_habilidades (
	voluntario_codigo INTEGER NOT NULL ,
	habilidades_codigo INTEGER NULL ,
	descricao VARCHAR(100) NULL ,
	  PRIMARY KEY (VOLUNTARIO_CODIGO) ,
	  INDEX fk_VOLUNTARIO_has_HABILIDADES_HABILIDADES1_idx (habilidades_codigo ASC) ,
	  INDEX fk_VOLUNTARIO_has_HABILIDADES_VOLUNTARIO1_idx (voluntario_codigo ASC) ,
	  CONSTRAINT fk_VOLUNTARIO_has_HABILIDADES_VOLUNTARIO1
		FOREIGN KEY (voluntario_codigo)
		REFERENCES voluntario (codigo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	  CONSTRAINT fk_voluntario_has_habilidades_habilidades1
		FOREIGN KEY (habilidades_codigo)
		REFERENCES HABILIDADES (codigo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION)

CREATE voluntario_area_interesse (
	area_interesse_codigo INTEGER NOT NULL ,
	voluntario_codigo INTEGER NOT NULL ,
	data_inclusao VARCHAR(45) NULL ,
	  PRIMARY KEY (area_interesse_codigo, voluntario_codigo) ,
	  INDEX fk_area_interesse_has_voluntario_voluntario1_idx (voluntario_codigo ASC) ,
	  INDEX fk_area_interesse_has_voluntario_area_interesse1_idx (area_interesse_codigo ASC) ,
	  CONSTRAINT fk_area_interesse_has_voluntario_area_interesse1
		FOREIGN KEY (area_interesse_codigo)
		REFERENCES area_interesse (codigo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	  CONSTRAINT fk_area_interesse_has_voluntario_voluntario1
		FOREIGN KEY (voluntario_codigo)
		REFERENCES voluntario (codigo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)

CREATE  TABLE  voluntario_entidade_formacao (
	voluntario_codigo INTEGER NOT NULL ,
	entidade_formacao_codigo INTEGER NOT NULL ,
	titulo VARCHAR(100) NOT NULL ,
	  PRIMARY KEY (voluntario_codigo, entidade_formacao_codigo) ,
	  INDEX fk_voluntario_has_entidade_formacao_entidade_formacao1_idx (entidade_formacao_codigo ASC) ,
	  INDEX fk_voluntario_has_entidade_formacao_voluntario1_idx (voluntario_codigo ASC) ,
	  CONSTRAINT fk_voluntario_has_entidade_formacao_voluntario1
		FOREIGN KEY (voluntario_codigo)
		REFERENCES voluntario (codigo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	  CONSTRAINT fk_VOLUNTARIO_has_ENTIDADE_FORMACAO_ENTIDADE_FORMACAO1
		FOREIGN KEY (entidade_formacao_codigo)
		REFERENCES ENTIDADE_FORMACAO (codigo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);