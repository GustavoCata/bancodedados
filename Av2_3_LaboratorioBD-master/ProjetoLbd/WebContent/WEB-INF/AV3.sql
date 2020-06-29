CREATE DATABASE av3
GO
USE av3

CREATE TABLE aluno(
ra INT NOT NULL,
nome VARCHAR(100) NOT NULL
PRIMARY KEY (ra)
)

INSERT INTO aluno VALUES
(1111111, 'Messi'),
(1234567, 'Ronaldo'),
(1234568, 'Firmino'),
(1234569, 'Salah'),
(1234561, 'Kaka')

CREATE TABLE disciplina(
cod VARCHAR(08) NOT NULL,
nome VARCHAR(50) NOT NULL,
sigla VARCHAR(10) NOT NULL,
turno VARCHAR(15) NOT NULL,
num_aulas INT NOT NULL
PRIMARY KEY (cod)
)

INSERT INTO disciplina VALUES
('4203-010', 'Arquitetura e Organização de Computadores', 'AOC', 'Tarde', 80),
('4203-020', 'Arquitetura e Organização de Computadores', 'AOC', 'Noite', 80),
('4208-010', 'Laboratório de Hardware', 'LH', 'Tarde', 80),
('4226-004', 'Banco de Dados', 'BD', 'Tarde', 80),
('4213-003', 'Sistemas Operacionais I', 'SO I', 'Tarde', 80),
('4213-013', 'Sistemas Operacionais I', 'SO I', 'Noite', 80),
('4233-005', 'Laboratório de Banco de Dados', 'LBD', 'Tarde', 80),
('5005-220', 'Métodos Para a Produção do Conhecimento', 'MPPC', 'Tarde', 80)

CREATE TABLE faltas(
ra_aluno INT NOT NULL,
cod_disciplina VARCHAR(08) NOT NULL,
dia INT NOT NULL,
presenca INT 
FOREIGN KEY (ra_aluno) REFERENCES aluno(ra),
FOREIGN KEY (cod_disciplina) REFERENCES disciplina(cod),
CONSTRAINT pk_faltas PRIMARY KEY (ra_aluno, cod_disciplina, dia)
)

CREATE TABLE avaliacao(
cod VARCHAR(20) NOT NULL,
tipo VARCHAR(50) NOT NULL
PRIMARY KEY (cod)
)

INSERT INTO avaliacao VALUES
('P1', 'Prova'),
('P2', 'Prova'),
('P3', 'Prova'),
('T', 'Trabalho'),
('Pré Exame', 'Trabalho'),
('Exame', 'Prova'),
('Monografia Completa', 'Monografia'),
('Monografia Resumida', 'Monografia')

CREATE TABLE notas(
ra_aluno INT NOT NULL,
cod_disciplina VARCHAR(08) NOT NULL,
cod_avaliacao VARCHAR(20) NOT NULL,
nota DECIMAL(3,1)
FOREIGN KEY (ra_aluno) REFERENCES aluno(ra),
FOREIGN KEY (cod_disciplina) REFERENCES disciplina(cod),
FOREIGN KEY (cod_avaliacao) REFERENCES avaliacao(cod),
CONSTRAINT pk_notas PRIMARY KEY (ra_aluno, cod_disciplina, cod_avaliacao)
)

CREATE TABLE aluno_disc(
ra_aluno INT NOT NULL,
cod_disciplina VARCHAR(08) NOT NULL,
ano INT NOT NULL
FOREIGN KEY (ra_aluno) REFERENCES aluno(ra),
FOREIGN KEY (cod_disciplina) REFERENCES disciplina(cod),
CONSTRAINT pk_aluno_disc PRIMARY KEY (ra_aluno, cod_disciplina)
)

INSERT INTO aluno_disc VALUES
(1111111, '4213-003', 2020),
(1234567, '4213-003', 2020),
(1234568, '4213-003', 2020),
(1234569, '4213-003', 2020),
(1234561, '4213-003', 2020),
(1111111, '4203-010', 2020),
(1234567, '4203-010', 2020),
(1234568, '4203-010', 2020),
(1234569, '4203-010', 2020),
(1234561, '4203-010', 2020),
(1111111, '4226-004', 2020),
(1234567, '4226-004', 2020),
(1234568, '4226-004', 2020),
(1234569, '4226-004', 2020),
(1234561, '4226-004', 2020)

INSERT INTO faltas VALUES
(1111111, '4203-010', 1, 0),
(1111111, '4203-010', 2, 0),
(1111111, '4203-010', 3, 0),
(1111111, '4203-010', 4, 0),
(1111111, '4203-010', 5, 0),
(1111111, '4203-010', 6, 0),
(1111111, '4203-010', 7, 0),
(1111111, '4203-010', 8, 0),
(1111111, '4203-010', 9, 0),
(1111111, '4203-010', 10, 0),
(1111111, '4203-010', 11, 0),
(1111111, '4203-010', 12, 0),
(1111111, '4203-010', 13, 0),
(1111111, '4203-010', 14, 0),
(1111111, '4203-010', 15, 0),
(1111111, '4203-010', 16, 0),
(1111111, '4203-010', 17, 0),
(1111111, '4203-010', 18, 0),
(1111111, '4203-010', 19, 0),
(1111111, '4203-010', 20, 0),
(1234567, '4203-010', 1, 1),
(1234567, '4203-010', 2, 1),
(1234567, '4203-010', 3, 1),
(1234567, '4203-010', 4, 1),
(1234567, '4203-010', 5, 1),
(1234567, '4203-010', 6, 1),
(1234567, '4203-010', 7, 1),
(1234567, '4203-010', 8, 1),
(1234567, '4203-010', 9, 1),
(1234567, '4203-010', 10, 1),
(1234567, '4203-010', 11, 1),
(1234567, '4203-010', 12, 1),
(1234567, '4203-010', 13, 1),
(1234567, '4203-010', 14, 1),
(1234567, '4203-010', 15, 1),
(1234567, '4203-010', 16, 1),
(1234567, '4203-010', 17, 1),
(1234567, '4203-010', 18, 1),
(1234567, '4203-010', 19, 1),
(1234567, '4203-010', 20, 1),
(1234568, '4203-010', 1, 0),
(1234568, '4203-010', 2, 0),
(1234568, '4203-010', 3, 0),
(1234568, '4203-010', 4, 0),
(1234568, '4203-010', 5, 0),
(1234568, '4203-010', 6, 0),
(1234568, '4203-010', 7, 0),
(1234568, '4203-010', 8, 0),
(1234568, '4203-010', 9, 0),
(1234568, '4203-010', 10, 0),
(1234568, '4203-010', 11, 0),
(1234568, '4203-010', 12, 0),
(1234568, '4203-010', 13, 0),
(1234568, '4203-010', 14, 0),
(1234568, '4203-010', 15, 0),
(1234568, '4203-010', 16, 0),
(1234568, '4203-010', 17, 0),
(1234568, '4203-010', 18, 0),
(1234568, '4203-010', 19, 0),
(1234568, '4203-010', 20, 0),
(1234569, '4203-010', 1, 0),
(1234569, '4203-010', 2, 0),
(1234569, '4203-010', 3, 0),
(1234569, '4203-010', 4, 0),
(1234569, '4203-010', 5, 0),
(1234569, '4203-010', 6, 0),
(1234569, '4203-010', 7, 0),
(1234569, '4203-010', 8, 0),
(1234569, '4203-010', 9, 0),
(1234569, '4203-010', 10, 0),
(1234569, '4203-010', 11, 0),
(1234569, '4203-010', 12, 0),
(1234569, '4203-010', 13, 0),
(1234569, '4203-010', 14, 0),
(1234569, '4203-010', 15, 0),
(1234569, '4203-010', 16, 0),
(1234569, '4203-010', 17, 0),
(1234569, '4203-010', 18, 0),
(1234569, '4203-010', 19, 0),
(1234569, '4203-010', 20, 0),
(1234561, '4203-010', 1, 1),
(1234561, '4203-010', 2, 2),
(1234561, '4203-010', 3, 3),
(1234561, '4203-010', 4, 4),
(1234561, '4203-010', 5, 3),
(1234561, '4203-010', 6, 2),
(1234561, '4203-010', 7, 1),
(1234561, '4203-010', 8, 0),
(1234561, '4203-010', 9, 1),
(1234561, '4203-010', 10, 2),
(1234561, '4203-010', 11, 3),
(1234561, '4203-010', 12, 4),
(1234561, '4203-010', 13, 3),
(1234561, '4203-010', 14, 2),
(1234561, '4203-010', 15, 1),
(1234561, '4203-010', 16, 0),
(1234561, '4203-010', 17, 1),
(1234561, '4203-010', 18, 2),
(1234561, '4203-010', 19, 3),
(1234561, '4203-010', 20, 4)

INSERT INTO notas VALUES
(1111111, '4203-010', 'P1', 9.0),
(1111111, '4203-010', 'P2', 8.0),
(1111111, '4203-010', 'T', 7.0),
(1111111, '4203-010', 'Exame', 0.0),
(1234567, '4203-010', 'P1', 1.0),
(1234567, '4203-010', 'P2', 1.0),
(1234567, '4203-010', 'T', 1.0),
(1234567, '4203-010', 'Exame', 0.0),
(1234568, '4203-010', 'P1', 5.0),
(1234568, '4203-010', 'P2', 5.0),
(1234568, '4203-010', 'T', 5.0),
(1234568, '4203-010', 'Exame', 7.0),
(1234569, '4203-010', 'P1', 4.0),
(1234569, '4203-010', 'P2', 4.0),
(1234569, '4203-010', 'T', 4.0),
(1234569, '4203-010', 'Exame', 7.0),
(1234561, '4203-010', 'P1', 10.0),
(1234561, '4203-010', 'P2', 10.0),
(1234561, '4203-010', 'T', 10.0),
(1234561, '4203-010', 'Exame', 0.0)

--Procedure para gravar faltas
GO
CREATE PROCEDURE sp_grava_faltas(@ra INT, @cod_disc VARCHAR(08), @dia INT, @presenca INT)
AS 
BEGIN
	DECLARE @registro INT
	
	SET @registro = (SELECT COUNT(ra_aluno) FROM faltas WHERE ra_aluno = @ra AND cod_disciplina = @cod_disc AND dia = @dia)

	IF @registro = 0
		BEGIN
			INSERT INTO faltas VALUES
			(@ra, @cod_disc, @dia, @presenca)
		END
	ELSE
		BEGIN
			UPDATE faltas
			SET presenca = @presenca
			WHERE ra_aluno = @ra AND cod_disciplina = @cod_disc AND dia = @dia
		END
END

--Procedure para gravar notas
GO
CREATE PROCEDURE sp_grava_notas(@ra INT, @cod_disc VARCHAR(08), @cod_avaliacao VARCHAR(20), @nota FLOAT)
AS 
BEGIN
	DECLARE @registro INT,
			@nota_decimal DECIMAL(3,1)
	
	SET @registro = (SELECT COUNT(ra_aluno) FROM notas WHERE ra_aluno = @ra AND cod_disciplina = @cod_disc AND cod_avaliacao = @cod_avaliacao)

	IF @registro = 0
		BEGIN
			SET @nota_decimal = CAST(@nota AS DECIMAL(3,1))
			INSERT INTO notas VALUES
			(@ra, @cod_disc, @cod_avaliacao, @nota_decimal)
		END
	ELSE
		BEGIN
			UPDATE notas
			SET nota = @nota
			WHERE ra_aluno = @ra AND cod_disciplina = @cod_disc AND cod_avaliacao = @cod_avaliacao
		END
END

--Function que retorna uma tabela com as faltas de uma disciplina
GO
CREATE FUNCTION fn_tabela_notas(@cod_disc VARCHAR(08))
RETURNS @tabela TABLE(
ra_aluno INT,
nome_aluno VARCHAR(100),
nota1 DECIMAL(3,1),
nota2 DECIMAL(3,1),
nota3 DECIMAL(3,1),
nota4 DECIMAL(3,1),
nota5 DECIMAL(3,1),
media DECIMAL (3,1),
situacao VARCHAR(10)
)
AS 
BEGIN
	DECLARE @ra_aluno INT,
			@ra_temp INT,
			@nome_aluno VARCHAR(100),
			@cod_avaliacao VARCHAR(20),
			@nota DECIMAL(3,1),
			@nota1 DECIMAL(3,1),
			@nota2 DECIMAL(3,1),
			@nota3 DECIMAL(3,1),
			@nota4 DECIMAL(3,1),
			@nota5 DECIMAL(3,1),
			@media_i DECIMAL(3,1),
			@media_f DECIMAL(3,1),
			@situacao VARCHAR(10),
			@situacao_p VARCHAR(10),
			@cont INT

			DECLARE cursor_busca CURSOR FOR
				SELECT ra_aluno, cod_avaliacao, nota FROM notas WHERE cod_disciplina = @cod_disc ORDER BY ra_aluno
			OPEN cursor_busca
			FETCH NEXT FROM cursor_busca INTO @ra_aluno, @cod_avaliacao, @nota
			WHILE @@FETCH_STATUS = 0
				BEGIN
					SET @ra_temp = @ra_aluno
					SET @nome_aluno = (SELECT nome FROM aluno WHERE ra = @ra_temp)
					SET @situacao_p = (SELECT SUM(presenca) FROM faltas WHERE cod_disciplina = @cod_disc AND ra_aluno = @ra_temp)
					SET @cont = 1
					IF @cod_disc = '4203-010' OR @cod_disc = '4203-020' OR @cod_disc = '4208-010' OR @cod_disc = '4226-004'
						BEGIN
							WHILE @cont <= 4
								BEGIN
									IF @cod_avaliacao = 'P1'
										SET @nota1 = @nota * 0.3
									ELSE
										BEGIN
											IF @cod_avaliacao = 'P2'
												SET @nota2 = @nota * 0.5
											ELSE
												BEGIN
													IF @cod_avaliacao = 'T'
														SET @nota3 = @nota * 0.2
													ELSE
														BEGIN
															IF @cod_avaliacao = 'Exame'
																SET @nota4 = @nota
														END
												END
										END
									FETCH NEXT FROM cursor_busca INTO @ra_aluno, @cod_avaliacao, @nota
									SET @cont = @cont + 1
								END

								SET @media_i = @nota1 + @nota2 + @nota3

								IF @media_i < 3.0
									BEGIN
										SET @situacao = 'REPROVADO'
										INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
										(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_i, @situacao)
									END
								ELSE
									BEGIN
										IF @media_i >= 6.0
											BEGIN
												IF @situacao_p > 20
													BEGIN
														SET @situacao = 'REPROVADO'
														INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
														(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_i, @situacao)
													END
												ELSE
													BEGIN
														SET @situacao = 'APROVADO'
														INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
														(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_i, @situacao)
													END
											END
										ELSE
											BEGIN
												SET @media_f = (@media_i + @nota4)/2
												IF @media_f < 6
													BEGIN
														SET @situacao = 'REPROVADO'
														INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, nota4, media, situacao) VALUES
														(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @nota4, @media_f, @situacao)
													END
												ELSE
													BEGIN
														IF @situacao_p > 20
															BEGIN
																SET @situacao = 'REPROVADO'
																INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, nota4, media, situacao) VALUES
																(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @nota4, @media_f, @situacao)
															END
														ELSE
															BEGIN
																SET @situacao = 'APROVADO'
																INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, nota4, media, situacao) VALUES
																(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @nota4, @media_f, @situacao)
															END
													END
											END
									END
						END
					ELSE
						BEGIN
							IF @cod_disc = '4213-003' OR @cod_disc = '4213-013'
								BEGIN
									WHILE @cont <= 5
										BEGIN
											IF @cod_avaliacao = 'P1'
												SET @nota1 = @nota * 0.35
											ELSE
												BEGIN
													IF @cod_avaliacao = 'P2'
														SET @nota2 = @nota * 0.35
													ELSE
														BEGIN
															IF @cod_avaliacao = 'T'
																SET @nota3 = @nota * 0.3
															ELSE
																BEGIN
																	IF @cod_avaliacao = 'Pré Exame'
																		SET @nota4 = @nota * 0.2
																	ELSE
																		BEGIN
																			IF @cod_avaliacao = 'Exame'
																				SET @nota5 = @nota
																		END
																END
														END
												END
											FETCH NEXT FROM cursor_busca INTO @ra_aluno, @cod_avaliacao, @nota
											SET @cont = @cont + 1
										END

										SET @media_i = @nota1 + @nota2 + @nota3

										IF @media_i < 3.0
											BEGIN
												SET @situacao = 'REPROVADO'
												INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
												(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_i, @situacao)
											END
										ELSE
											BEGIN
												IF @media_i >= 6.0
													BEGIN
														IF @situacao_p > 20
															BEGIN
																SET @situacao = 'REPROVADO'
																INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
																(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_i, @situacao)
															END
														ELSE
															BEGIN
																SET @situacao = 'APROVADO'
																INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
																(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_i, @situacao)
															END
													END
												ELSE
													BEGIN
														SET @media_i = @media_i + @nota4
														IF @media_i >= 6.0
															BEGIN
																IF @situacao_p > 20
																	BEGIN
																		SET @situacao = 'REPROVADO'
																		INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, nota4, media, situacao) VALUES
																		(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @nota4, @media_i, @situacao)
																	END
																ELSE
																	BEGIN
																		SET @situacao = 'APROVADO'
																		INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, nota4, media, situacao) VALUES
																		(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @nota4, @media_i, @situacao)
																	END
															END
														ELSE
															BEGIN
																SET @media_f = (@media_i + @nota5)/2
																IF @media_f >= 6.0
																	BEGIN
																		IF @situacao_p > 20
																			BEGIN
																				SET @situacao = 'REPROVADO'
																				INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, nota4, nota5, media, situacao) VALUES
																				(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @nota4, @nota5, @media_f, @situacao)
																			END
																		ELSE
																			BEGIN
																				SET @situacao = 'APROVADO'
																				INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, nota4, nota5, media, situacao) VALUES
																				(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @nota4, @nota5, @media_f, @situacao)
																			END
																	END
																ELSE
																	BEGIN
																		SET @situacao = 'REPROVADO'
																		INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, nota4, nota5, media, situacao) VALUES
																		(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @nota4, @nota5, @media_f, @situacao)
																	END
															END
													END
											END
								END
							ELSE
								BEGIN
									IF @cod_disc = '4233-005'
										BEGIN
											WHILE @cont <= 4
												BEGIN
													IF @cod_avaliacao = 'P1'
														SET @nota1 = @nota * 0.333
													ELSE
														BEGIN
															IF @cod_avaliacao = 'P2'
																SET @nota2 = @nota * 0.333
															ELSE
																BEGIN
																	IF @cod_avaliacao = 'P3'
																		SET @nota3 = @nota * 0.333
																	ELSE
																		BEGIN
																			IF @cod_avaliacao = 'Exame'
																				SET @nota4 = @nota
																		END
																END
														END
													FETCH NEXT FROM cursor_busca INTO @ra_aluno, @cod_avaliacao, @nota
													SET @cont = @cont + 1
												END

												SET @media_i = @nota1 + @nota2 + @nota3
												IF @media_i < 3.0
													BEGIN
														SET @situacao = 'REPROVADO'
														INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
														(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_i, @situacao)
													END
												ELSE
													BEGIN
														IF @media_i >= 6.0
															BEGIN
																IF @situacao_p > 20
																	BEGIN
																		SET @situacao = 'REPROVADO'
																		INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
																		(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_i, @situacao)
																	END
																ELSE
																	BEGIN
																		SET @situacao = 'APROVADO'
																		INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
																		(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_i, @situacao)
																	END
															END
														ELSE
															BEGIN
																SET @media_f = (@media_i + @nota4)/2
																IF @media_f < 6
																	BEGIN
																		SET @situacao = 'REPROVADO'
																		INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, nota4, media, situacao) VALUES
																		(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @nota4, @media_f, @situacao)
																	END
																ELSE
																	BEGIN
																		IF @situacao_p > 20
																			BEGIN
																				SET @situacao = 'REPROVADO'
																				INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, nota4, media, situacao) VALUES
																				(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @nota4, @media_f, @situacao)
																			END
																		ELSE
																			BEGIN
																				SET @situacao = 'APROVADO'
																				INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, nota4, media, situacao) VALUES
																				(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @nota4, @media_f, @situacao)
																			END
																	END
															END
													END
										END
									ELSE
										BEGIN
											IF @cod_disc = '5005-220'
												BEGIN
													WHILE @cont <= 3
														BEGIN
															IF @cod_avaliacao = 'Monografia Completa'
																SET @nota1 = @nota * 0.8
															ELSE
																BEGIN
																	IF @cod_avaliacao = 'Monografia Resumida'
																		SET @nota2 = @nota * 0.2
																	ELSE
																		BEGIN
																			IF @cod_avaliacao = 'Exame'
																				SET @nota3 = @nota
																		END
																END
															FETCH NEXT FROM cursor_busca INTO @ra_aluno, @cod_avaliacao, @nota
															SET @cont = @cont + 1
														END
														SET @media_i = @nota1 + @nota2
															IF @media_i < 3.0
																BEGIN
																	SET @situacao = 'REPROVADO'
																	INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, media, situacao) VALUES
																	(@ra_temp, @nome_aluno, @nota1, @nota2, @media_i, @situacao)
																END
															ELSE
																BEGIN
																	IF @media_i >= 6.0
																		BEGIN
																			IF @situacao_p > 20
																				BEGIN
																					SET @situacao = 'REPROVADO'
																					INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, media, situacao) VALUES
																					(@ra_temp, @nome_aluno, @nota1, @nota2, @media_i, @situacao)
																				END
																			ELSE
																				BEGIN
																					SET @situacao = 'APROVADO'
																					INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, media, situacao) VALUES
																					(@ra_temp, @nome_aluno, @nota1, @nota2, @media_i, @situacao)
																				END
																		END
																	ELSE
																		BEGIN
																			SET @media_f = (@media_i + @nota3)/2
																			IF @media_f < 6
																				BEGIN
																					SET @situacao = 'REPROVADO'
																					INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
																					(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_f, @situacao)
																				END
																			ELSE
																				BEGIN
																					IF @situacao_p > 20
																						BEGIN
																							SET @situacao = 'REPROVADO'
																							INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
																							(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_f, @situacao)
																						END
																					ELSE
																						BEGIN
																							SET @situacao = 'APROVADO'
																							INSERT INTO @tabela(ra_aluno, nome_aluno, nota1, nota2, nota3, media, situacao) VALUES
																							(@ra_temp, @nome_aluno, @nota1, @nota2, @nota3, @media_f, @situacao)
																						END
																				END
																		END
																END
												END
										END
								END
						END
				END
			CLOSE cursor_busca
			DEALLOCATE cursor_busca
			RETURN
END

--Function que retorna uma tabela com as notas de uma disciplina
GO
CREATE FUNCTION fn_tabela_faltas(@cod_disc VARCHAR(08))
RETURNS @tabela TABLE(
ra_aluno INT,
nome_aluno VARCHAR(100),
sem1 VARCHAR(04),
sem2 VARCHAR(04),
sem3 VARCHAR(04),
sem4 VARCHAR(04),
sem5 VARCHAR(04),
sem6 VARCHAR(04),
sem7 VARCHAR(04),
sem8 VARCHAR(04),
sem9 VARCHAR(04),
sem10 VARCHAR(04),
sem11 VARCHAR(04),
sem12 VARCHAR(04),
sem13 VARCHAR(04),
sem14 VARCHAR(04),
sem15 VARCHAR(04),
sem16 VARCHAR(04),
sem17 VARCHAR(04),
sem18 VARCHAR(04),
sem19 VARCHAR(04),
sem20 VARCHAR(04),
total INT)
AS
BEGIN
	DECLARE @nome VARCHAR(100),
			@ra_temp INT,
			@ra INT,
			@presenca INT,
			@presenca_d VARCHAR(04),
			@dia VARCHAR(04),
			@sem1 VARCHAR(04),
			@sem2 VARCHAR(04),
			@sem3 VARCHAR(04),
			@sem4 VARCHAR(04),
			@sem5 VARCHAR(04),
			@sem6 VARCHAR(04),
			@sem7 VARCHAR(04),
			@sem8 VARCHAR(04),
			@sem9 VARCHAR(04),
			@sem10 VARCHAR(04),
			@sem11 VARCHAR(04),
			@sem12 VARCHAR(04),
			@sem13 VARCHAR(04),
			@sem14 VARCHAR(04),
			@sem15 VARCHAR(04),
			@sem16 VARCHAR(04),
			@sem17 VARCHAR(04),
			@sem18 VARCHAR(04),
			@sem19 VARCHAR(04),
			@sem20 VARCHAR(04),
			@total VARCHAR(04)

	DECLARE cursor_busca CURSOR FOR
		SELECT ra_aluno, dia, presenca FROM faltas WHERE cod_disciplina = @cod_disc ORDER BY ra_aluno, dia

	OPEN cursor_busca
	FETCH NEXT FROM cursor_busca INTO @ra, @dia, @presenca
	WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @nome = (SELECT nome FROM aluno WHERE ra = @ra)
			SET @ra_temp = @ra
			
			WHILE @dia < 20
				BEGIN
				
				SET @presenca_d = CASE @presenca WHEN 0 THEN 'PPPP'
												 WHEN 1 THEN 'PPPF'
												 WHEN 2 THEN 'PPFF'
												 WHEN 3 THEN 'PFFF'
												 WHEN 4 THEN 'FFFF'
												 END
				IF @dia = 1
					SET @sem1 = @presenca_d
				ELSE
				BEGIN
				IF @dia = 2
					SET @sem2 = @presenca_d	
				ELSE
				BEGIN
				IF @dia = 3
					SET @sem3 = @presenca_d
				ELSE
				BEGIN
				IF @dia = 4
					SET @sem4 = @presenca_d	
				ELSE
				BEGIN
				IF @dia = 5
					SET @sem5 = @presenca_d
				ELSE
				BEGIN
				IF @dia = 6
					SET @sem6 = @presenca_d	
				ELSE
				BEGIN
				IF @dia = 7
					SET @sem7 = @presenca_d
				ELSE
				BEGIN
				IF @dia = 8
					SET @sem8= @presenca_d
				ELSE
				BEGIN
				IF @dia = 9
					SET @sem9 = @presenca_d
				ELSE
				BEGIN
				IF @dia = 10
					SET @sem10 = @presenca_d	
				ELSE
				BEGIN
				IF @dia = 11
					SET @sem11 = @presenca_d
				ELSE
				BEGIN
				IF @dia = 12
					SET @sem12 = @presenca_d	
				ELSE
				BEGIN
				IF @dia = 13
					SET @sem13 = @presenca_d
				ELSE
				BEGIN
				IF @dia = 14
					SET @sem14 = @presenca_d	
				ELSE
				BEGIN
				IF @dia = 15
					SET @sem15 = @presenca_d
				ELSE
				BEGIN
				IF @dia = 16
					SET @sem16 = @presenca_d	
				ELSE
				BEGIN
				IF @dia = 17
					SET @sem17 = @presenca_d
				ELSE
				BEGIN
				IF @dia = 18
					SET @sem18 = @presenca_d	
				ELSE
				BEGIN
				IF @dia = 19
					SET @sem19 = @presenca_d
				
			END END END END END END END END END END END END END END END END END END 
				FETCH NEXT FROM cursor_busca INTO @ra, @dia, @presenca
			END
				SET @presenca_d = CASE @presenca WHEN 0 THEN 'PPPP'
												 WHEN 1 THEN 'PPPF'
												 WHEN 2 THEN 'PPFF'
												 WHEN 3 THEN 'PFFF'
												 WHEN 4 THEN 'FFFF'
												 END
				IF @dia = 20
					SET @sem20 = @presenca_d

				SET @total = (SELECT SUM(presenca) FROM faltas WHERE cod_disciplina = @cod_disc AND ra_aluno = @ra_temp)

				INSERT INTO @tabela VALUES
				(@ra_temp, @nome, @sem1, @sem2, @sem3, @sem4, @sem5, @sem6, @sem7, @sem8, @sem9, @sem10, @sem11, @sem12, @sem13, @sem14, @sem15, @sem16, @sem17, @sem18, @sem19, @sem20, @total)
				FETCH NEXT FROM cursor_busca INTO @ra, @dia, @presenca
	END
	CLOSE cursor_busca
	DEALLOCATE cursor_busca
	RETURN
END

--Gatilho que não permite excluir ou alterar uma disciplina
GO
CREATE TRIGGER t_disciplina ON disciplina
INSTEAD OF UPDATE, DELETE 
AS
BEGIN
	RAISERROR('Não é permitido apagar ou alterar os dados das Disciplinas',16,1)
END

SELECT * FROM fn_tabela_faltas('4203-010') ORDER BY nome_aluno
SELECT * FROM fn_tabela_notas('4203-010') ORDER BY nome_aluno

