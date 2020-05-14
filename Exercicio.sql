use exercicio;
create table cliente (
codigo int auto_increment NOT NULL,
nome varchar(100),
telefone varchar(20),
primary key (codigo)
);

create table produto (
codigo int auto_increment NOT NULL,
nome varchar(100),
valor_unit decimal(4,2),
primary key (codigo)
);

create table venda (
codigo_cliente int not null,
codigo_produto int not null,
data_hora datetime,
quantidade int,
valor_unit decimal(4,2),
valor_total decimal(4,2),
PRIMARY KEY (codigo_cliente, codigo_produto, data_hora),
FOREIGN KEY (codigo_cliente) references cliente(codigo),
FOREIGN KEY (codigo_produto) references produto(codigo)
);

create table bonus(
id int auto_increment not null,
valor int,
premio varchar(40),
primary key (id)
);
    
create procedure pc_venda (@acao char(1), @codigo_cliente int, @codigo_venda int, @quantidade)
as
declare @codigo_venda as int
declare @valor_unit as int
SET @cta_produto = (SELECT COUNT(*) FROM produto 
							WHERE codigo = @produto)
	IF (@cta_produto > 0)
begin
SET @cta_produto = (SELECT COUNT(*) FROM produto 
							WHERE codigo = @produto)
	IF (@cta_produto > 0)
	BEGIN
		SET @cta_venda = (SELECT COUNT(*) FROM venda)
		IF (@cta_venda = 0)
		BEGIN
			SET @id_venda = 1
		END
		ELSE
		BEGIN
			SET @id_venda = (SELECT MAX(id_venda) FROM venda)
		END
		IF (UPPER(@tipo) != 'C' AND UPPER(@tipo) != 'N')
		BEGIN
			RAISERROR ('Operação inválida !', 16, 1)
		END
		ELSE 
		BEGIN
			IF (UPPER(@tipo) = 'N' AND @cta_venda > 0)
			BEGIN
				SET @id_venda =  @id_venda + 1
			END
			EXEC sp_vl_total @produto, @quantidade, @valor_total OUTPUT
			INSERT INTO venda VALUES
			(@id_venda, @quantidade, @valor_total, @produto, GETDATE())
			SET @saida = 'Venda cadastrada com sucesso !'
		END
	END
	ELSE
	BEGIN
		RAISERROR ('Produto não cadastrado', 16, 1)
	END
    
    
CREATE FUNCTION fn_prêmio()    
RETURNS @tabela TABLE (
codigo INT,
nome VARCHAR(100),
valor_total DECIMAL(4,2),
valor int,
premio varchar(40),
sobra int
)
AS 
BEGIN
	INSERT @tabela(cod,nome,valor_total, valor)
	SELECT cod, nome, valor_total FROM cliente, venda
	UPDATE @tabela 
		SET premio = (SELECT dbo.exercicio(codigo))
	UPDATE @tabela 
		SET premio = 'Jogo de copos'
		WHERE  @valor > 1000 and @valor < 2000
			IF(@valor_total >= @valor)
			Begin SET sobra = @valor_total - @valor 
		Else Begin
	UPDATE @tabela 
		SET @premio = 'Jogo de Pratos'
		WHERE @valor >= 2000 AND @valor < 3000
            IF(@valor_total >= @valor)
			Begin SET sobra = @valor_total - @valor 
            Else Begin
	UPDATE @tabela 
		SET @premio = 'Jogo de Talheres'
		WHERE @valor >= 3000 AND @valor < 4000
            IF(@valor_total >= @valor)
			Begin SET sobra = @valor_total - @valor 
            Else
	UPDATE @tabela 
		SET @premio = 'Jogo de Porcelana'
		WHERE @valor >= 4000 AND @valor < 5000
            IF(@valor_total >= @valor )
			Begin SET sobra = @valor_total - @valor 
            Else Begin
	UPDATE @tabela 
		SET premio = 'Jogo de Cristais '
		WHERE @valor >= 5000  AND @imc < 6000
        IF(@valor_total >= @valor )
			Begin SET sobra = @valor_total - @valor 
		Else Begin RAISERROR('erro')
        
        Return
				END
			END
		END
	END
END




