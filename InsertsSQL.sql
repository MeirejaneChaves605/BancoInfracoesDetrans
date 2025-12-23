INSERT INTO PROPRIETARIO (CPF, Nome, Endereco, Bairro, Cidade, Estado, Sexo, Data_Nascimento, Idade) VALUES
('11111111111', 'Maria de Jesus', 'Rua 14B, 500', 'Samambaia Sul', 'Brasília', 'DF', 'F', '1955-08-06', 70),
('22222222222', 'José Ferreira', 'Av. Luz, 350', 'Sobradinho', 'Brasília', 'DF', 'M', '1995-12-25', 30),
('33333333333', 'Laura Cardoso', 'Parque L, 210', 'Águas Claras', 'Brasília', 'DF', 'F', '1989-07-05', 36),
('44444444444', 'Marcos Alves', 'Rua A, 408', 'Ceilândia Centro', 'Brasília', 'DF', 'M', '1978-11-02', 47),
('55555555555', 'Claudete Gomes', 'Estrada R, 700', 'Santa Maria', 'Brasília', 'DF', 'F', '2005-04-15', 20);

INSERT INTO TELEFONE (Id_Telefone, Numero, CPF)
VALUES 
(1, '(61) 2314-6018', '11111111111'),
(2, '(61) 3548-4269', '22222222222'),
(3, '(61) 99852-3589','33333333333'),
(4, '(61) 4405-8552', '44444444444'),
(5, '(61) 9985-3774', '55555555555');

INSERT INTO MODELO (Cod_Modelo, Nome_Modelo, Categoria, Descricao_Modelo, Tipo_Veiculo) VALUES
('MDL001', 'FUSCA', 'PASSEIO', 'Sedan compacto', 'AUTOMÓVEL'),
('MDL002', 'NISSAN VERSA', 'PASSEIO', 'Hatch médio', 'AUTOMÓVEL'),
('MDL003', 'GOL MI', 'PASSEIO', 'Hatch compacto', 'AUTOMÓVEL'),
('MDL004', 'RENAULT KARDIAN', 'PASSEIO', 'Hatch suv compacto', 'CAMINHONETE'),
('MDL005', 'HILUX', 'CAMINHONETË', 'Picape cabine dupla', 'CAMINHONETE');

INSERT INTO VEICULO (Placa, Chassi, Modelo, Cod_Modelo_FK, Categoria, Ano_Fabricacao, Cor, CPF_Proprietario_FK) VALUES
('ABC1234', 'CHASSIA0123456789', 'FUSCA', 'MDL001', 'PASSEIO', 1993, 'PRATA', '11111111111'),
('DEF5678', 'CHASSIB0123456789', 'NISSAN VERSA', 'MDL002', 'PASSEIO', 2024, 'AMARELA', '22222222222'), 
('GHI9012', 'CHASSIC0123456789', 'GOL MI', 'MDL003', 'PASSEIO', 2001, 'AZUL', '22222222222'),
('JKL3456', 'CHASSID0123456789', 'RENAULT KARDIAN', 'MDL004', 'PASSEIO', 2025, 'VERMELHA', '44444444444'),
('MNO7890', 'CHASSIE0123456789', 'HILUX', 'MDL005', 'CAMINHONETE', 2023, 'BRANCA', '55555555555');

INSERT INTO AGENTE_TRANSITO (Matricula, Nome, Tempo_Servico, Data_Contratacao) VALUES
('AT001', 'Emanuel Pinheiros', 8, '2017-05-18'),
('AT002', 'Luciana Melo', 19, '2006-08-29'),
('AT003', 'Adalberto Santiago', 26, '1999-05-10'),
('AT004', 'Márcia Santos', 23, '2002-12-03'),
('AT005', 'Eduardo Costa', 12, '2013-11-25');

INSERT INTO LOCAL_INFRACAO (Cod_Local, Posicao_Geografica, Velocidade_Permitida_Local, Logradouro, UF) VALUES
('LOC001', '-13.6532, -46.7711', 50, 'ESPLANADA', 'DF'),
('LOC002', '-14.7171, -46.6580', 60, 'DF-075', 'DF'),
('LOC003', '-13.5300, -47.0000', 80, 'EPTG', 'DF'),
('LOC004', '-13.6000, -47.0200', 40, 'BR-060', 'DF'),
('LOC005', '-13.6200, -46.5800', 60, 'SAAN', 'DF');

INSERT INTO TIPO_INFRACAO (Cod_Infracao, Valor_Cobrado, Gravidade, Descricao) VALUES
('INF001', 130.16, 'MÉDIA', 'Dirigir com fone de ouvido'),
('INF002', 2850.70, 'GRAVE', 'Não usar o cinto de segurança'),
('INF003', 880.41, 'GRAVÍSSIMA', 'Dirigir sob o efeito de álcool'),
('INF004', 195.23, 'GRAVE', 'Transitar em velocidade superior ao limite entre 20% e 50%'),
('INF005', 293.47, 'GRAVÍSSIMA', 'Transitar na contramão em vias de sentido único');

INSERT INTO INFRACAO (Local, Velocidade_Permitida, Velocidade_Aferida, Hora_Ocorrencia, Data_Ocorrencia, Placa, Cod_Infracao_FK, Cod_Local_FK, Matricula_Agente_FK) VALUES
('ESPLANADA', 50, 14, '12:42:00', '2025-08-23', 'ABC1234', 'INF001', 'LOC001', 'AT001'),
('DF-075', 60, 42, '18:05:20', '2025-07-05', 'DEF5678', 'INF002', 'LOC002', 'AT002'),
('EPTG', 80, 07, '00:30:00', '2025-10-22', 'GHI9012', 'INF003', 'LOC003', 'AT003'),
('BR-060', 40, 0, '20:18:00', '2025-10-23', 'ABC1234', 'INF004', 'LOC005', 'AT004'),
('SAAN', 60, 100, '13:00:00', '2025-11-09', 'JKL3456', 'INF005', 'LOC004', 'AT005');


	
