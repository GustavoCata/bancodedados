use exercicio;
create table  cursos(
codigo int not null,
nome_curso varchar(100),
duracao int,
primary key(codigo)
);
drop table cursos;

insert into cursos (codigo, nome_curso, duracao) value 
(0, "Análise e Desenvolvimento de Sistemas", 2880),
(1, "Logistica", 2880),
(2, "Polímeros", 2880),
(3, "Comércio Exterior", 2600),
(4, "Gestão Empresarial", 2600);

select * from cursos;

create table disciplina (
codigo int auto_increment not null,
nome_disciplina varchar(100),
carga_horario int,
primary key (codigo)
);


insert into diciplina(nome_disciplina, carga_horario) value 
("Algoritmos", 80),
("Administração", 80),
("Laboratório de Hardware", 40),
("Pesquisa Operacional ", 80),
("Física I", 80),
("Físico Química ", 80),
("Comércio Exterior ", 80),
("Fundamentos de Marketing", 80),
("Informática ", 40),
("Sistemas de Informação", 80);

select * from diciplina;

create table disciplina_cursos(
cod_cursos INT not null,
cod_disciplina INT not null,
primary key (cod_cursos),
FOREIGN KEY(cod_cursos) REFERENCES cursos (codigo),
FOREIGN KEY(cod_disciplina) REFERENCES disciplina (codigo)
);

insert into disciplina_cursos (cod_cursos, cod_disciplina ) values
 (1, 0),
 (2, 0),
 (2, 1),
 (2, 3),
 (2, 4),
 (3, 0),
 (4, 1),
 (5, 2),
 (6, 2),
 (7, 1),
 (8, 1),
 (8, 4),
 (9, 1),
 (9, 3),
 (10, 0),
 (10, 4);
 
 select * from disciplina_cursos;

CREATE FUNCTION dis_cur()
RETURNS @tabela  TABLE(
codigo_disciplina INT,
nome_disciplina VARCHAR(100),
carga_horaria_disciplina INT,
nome_curso VARCHAR(100)
 )
AS
BEGIN 
 DECLARE    @cod_cursos INT,
            @cod_disciplina INT,
			@nome_disciplina VARCHAR(100),
			@carga_horario INT,
            @nome_curso VARCHAR(100))
	DECLARE c_busca CURSOR FOR 
	SELECT DISTINCT cod_cursos FROM disciplina_cursos
	
	OPEN c_busca
	FETCH NEXT FROM c_busca
	INTO @cod_cursos

	WHILE @@FETCH_STATUS = 0
	BEGIN
     INSERT INTO @tabela VALUES
		(@cod_disciplina, @nome_disciplina, @carga_horario, @nome_curso)
        FETCH NEXT FROM c_busca
		INTO @cod_cursos
	END
	CLOSE c_busca
	DEALLOCATE c_busca
	
	RETURN
END

