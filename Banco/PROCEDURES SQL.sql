USE HOTEL
GO

-------------------------
----------[C#]-----------
-------------------------


CREATE PROCEDURE usp_pesquisaCliente
	@codReserva NUMERIC(6)
AS
IF (@codReserva <> 0)
	BEGIN
		SELECT cpfCliente FROM tblCliente WHERE codCliente IN
			(SELECT codCliente FROM tblReserva WHERE codReserva = @codReserva)
	END
--EXEC usp_pesquisaCliente
GO

CREATE PROCEDURE usp_pesquisarPrecoQuarto
	@codReserva NUMERIC(6)
AS 
IF (@codReserva <> 0) 
	BEGIN 
		SELECT preco FROM tblQuarto WHERE codQuarto IN 
			(SELECT codQuarto FROM tblReserva WHERE codReserva = @codReserva)
	END
GO
--EXEC usp_pesquisarPrecoQuarto 

CREATE PROCEDURE usp_pesquisarServicoNaReserva
	@codReserva NUMERIC(6)
AS 
IF (@codReserva <> 0)
	BEGIN 
		SELECT * FROM tblServico WHERE codServico IN 
			(SELECT codServico FROM tblReserva_Servico WHERE codReserva = @codReserva)
	END
GO
--EXEC usp_pesquisarServicoNaReserva

--[C#] PROCEDURE PARA CADASTRO DE CLIENTES //FUNCIONANDO

CREATE PROCEDURE usp_cadastrarCliente
	@nomeCliente VARCHAR(50),
	@cpfCliente VARCHAR(14),
	@rgCliente NUMERIC (10),
	@dataNascimentoCliente DATE,
	@enderecoCliente VARCHAR(50),
	@cepCliente VARCHAR(9),
	@cidadeCliente VARCHAR(30),
	@estadoCliente CHAR(2),
	@emailCliente VARCHAR(100),
	@telefoneCliente VARCHAR(12)
AS
	DECLARE @codCli NUMERIC(6)
	IF (@cpfCliente <> ' ') OR (@nomeCliente <> ' ')
		BEGIN 
			INSERT tblCliente VALUES 
				(@nomeCliente, @cpfCliente, @rgCliente, @dataNascimentoCliente, @enderecoCliente, @cepCliente, @cidadeCliente, @estadoCliente, @emailCliente, @telefoneCliente)
			SET @codCli = (SELECT MAX(codCliente) FROM tblCliente)
			PRINT @codCli
		END 
	ELSE 
		BEGIN 
			PRINT 'Valores Incorretos'
		END
 GO
--EXEC  usp_cadastrarCliente


-------------------------
----------[C#]-----------
-------------------------
------Form Check In -----
-------------------------

-- CONFIRMAÇÃO DE CHECK IN // FUNCIONANDO

CREATE PROCEDURE usp_confirmarCheckIn
	@idFuncionario NUMERIC(6),
	@codReserva NUMERIC (6)
AS 
	IF (@idFuncionario <> 0) AND (@codReserva <> 0)
		BEGIN
			UPDATE tblReserva SET idFuncionario = @idFuncionario, statusReserva = 'F' WHERE codReserva = @codReserva
		END
	ELSE 
		BEGIN
			PRINT 'Erro na confirmação de Check In'
		END 
GO
--EXEC usp_confirmarCheckIn

-------------------------
----------[C#]-----------
-------------------------

-- ALTERAR CONFIRMAÇÃO - CHECK IN //FUNCIONANDO

CREATE PROCEDURE usp_confirmarAlterandoDAL
	@idFuncionario NUMERIC(6),
	@codReserva NUMERIC (6),
	@codQuarto NUMERIC(6), 
	@qtdeHospede INT,
	@dataSaida DATE
AS 
	IF (@idFuncionario <> 0) AND (@codReserva <> 0)
		BEGIN 
			UPDATE tblReserva SET idFuncionario = @idFuncionario, codQuarto = @codQuarto, qtdeHospede = @qtdeHospede, dataEntrada = (SELECT GETDATE()), dataSaida = @dataSaida, statusReserva = 'F' WHERE codReserva = @codReserva
		END
	ELSE 
		BEGIN
			PRINT 'Erro na Confirmação'
		END
GO
--EXEC usp_confirmarAlterandoDAL

-------------------------
----------[C#]-----------
-------------------------

-- CONFIRMAR COM CÓDIGO DA RESERVA // FUNCIONANDO
CREATE PROCEDURE usp_confirmarAlterandoCodReserva
	@idFuncionario NUMERIC(6),
	@codQuarto NUMERIC(6), 
	@qtdeHospede INT,
	@dataSaida DATE, 
	@codReserva NUMERIC(6)
AS 
	IF (@idFuncionario <> 0) AND (@codReserva <> 0)
		BEGIN 
			UPDATE tblReserva SET idFuncionario = @idFuncionario, codQuarto = @codQuarto, qtdeHospede = @qtdeHospede, dataEntrada = (SELECT GETDATE()), dataSaida = @dataSaida, statusReserva = 'F' WHERE codReserva = @codReserva
		END
	ELSE 
		BEGIN
			PRINT 'Erro na Confirmação'
		END
GO
-- EXEC usp_confirmarAlterandoCodReserva

-------------------------
----------[C#]-----------
-------------------------

--[C#] SERVIÇOS DA RESERVA // FUNCIONANDO
CREATE PROCEDURE usp_servicosDaReserva
	@codReserva NUMERIC(6),
	@codServico NUMERIC(6)
AS
	IF (@codReserva <> 0) AND (@codServico = 100001)
		BEGIN 
			INSERT INTO tblReserva_Servico VALUES 
				(@codReserva, @codServico)
		END
	ELSE IF (@codReserva <> 0) AND (@codServico = 100002)
		BEGIN
			INSERT INTO tblReserva_Servico VALUES 
				(@codReserva, @codServico)
		END
	ELSE IF (@codReserva <> 0) AND (@codServico = 100003)
		BEGIN
			INSERT INTO tblReserva_Servico VALUES 
				(@codReserva, @codServico)
		END
	ELSE IF (@codReserva <> 0) AND (@codServico = 100004) 
		BEGIN
			INSERT INTO tblReserva_Servico VALUES 
				(@codReserva, @codServico)
		END	
	ELSE IF (@codReserva <> 0) AND (@codServico = 100005)
		BEGIN
			INSERT INTO tblReserva_Servico VALUES 
				(@codReserva, @codServico)
		END
	ELSE IF (@codReserva <> 0) AND (@codServico = 100006)
		BEGIN 
			INSERT INTO tblReserva_Servico VALUES 
				(@codReserva, @codServico)
		END
	ELSE 
		BEGIN
			PRINT 'Dados Incorretos'
		END
GO
--EXEC usp_servicosDaReserva

-------------------------
----------[C#]-----------
-------------------------

--[C#] ATUALIZAR CLIENTE // FUNCIONANDO
CREATE PROCEDURE usp_updateCliente 
	@nomeCliente VARCHAR(50),
	@cpfCliente VARCHAR(14),
	@rgCliente NUMERIC(10),
	@dataNascimentoCliente DATE,
	@enderecoCliente VARCHAR(50),
	@cepCliente VARCHAR(9),
	@cidadeCliente VARCHAR(30),
	@emailCliente VARCHAR(100),
	@telefoneCliente VARCHAR(20)
AS 
	IF (@nomeCliente <> ' ') AND (@cpfCliente <> ' ')
		BEGIN
			UPDATE tblCliente SET nomeCliente = @nomeCliente, cpfCliente = @cpfCliente, rgCliente = @rgCliente, dataNascimentoCliente = @dataNascimentoCliente, enderecoCliente = @enderecoCliente, cepCliente = @cepCliente, cidadeCliente = @cidadeCliente, emailCliente = @emailCliente, telefoneCliente = @telefoneCliente WHERE cpfCliente = @cpfCliente
		END
	ELSE 
		BEGIN
			PRINT 'Dados Incorretos'
		END
GO		
--EXEC usp_updateCliente

-------------------------
----------[C#]-----------
-------------------------

--[C#]REALIZAR NO SHOW //FUNCIONANDO
CREATE PROCEDURE usp_realizarNoShow
	@codReserva NUMERIC(6)
AS
DECLARE @dataAtual DATE
SET @dataAtual = (SELECT GETDATE())
	IF (@codReserva <> 0)
		BEGIN
			INSERT INTO tblNoShow VALUES
				(@codReserva, @dataAtual)
			UPDATE tblReserva SET statusReserva = 'E' WHERE codReserva = @codReserva
		END
	ELSE
		BEGIN 
			PRINT 'Dados inválidos'
		END
GO
--EXEC usp_realizarNoShow

-------------------------
----------[C#]-----------
-------------------------

--[C#] CANCELAR RESERVA

CREATE PROCEDURE usp_cancelarReserva
	@codReserva NUMERIC (6)
AS
	IF(@codReserva <>0)
		BEGIN
			UPDATE tblReserva SET statusReserva = 'C' WHERE codReserva = @codReserva
		END
	ELSE 
		BEGIN 
			PRINT 'Dado(s) incorreto(s)'
		END
GO
--EXEC usp_cancelarReserva







-------------------------
----------[C#]-----------
-------------------------
----[C#] Alterar Preço---
-------------------------


-- [C#] ALTERAR PRECO - QUARTO //FUNCIONANDO
CREATE PROCEDURE usp_alterarPrecoQuarto
	@codQuarto NUMERIC(6),
	@descricao VARCHAR (80),
	@preco DECIMAL (17,2)

AS
DECLARE @dataAtual DATE
	SET @dataAtual = (SELECT GETDATE())
	IF (@codQuarto <> 0)
		BEGIN 
			UPDATE tblQuarto SET descricao = @descricao, preco = @preco, dataAlteracao = @dataAtual WHERE codQuarto = @codQuarto
		END
	ELSE 
		BEGIN
			PRINT 'Valor(es) incorreto(s)'
		END
GO
--EXEC usp_alterarPrecoQuarto

--[C#] ALTERAR PREÇO - SERVIÇO //FUNCIONANDO 
CREATE PROCEDURE usp_alterarPrecoServico
	@codServico NUMERIC(6),
	@descricao VARCHAR(50),
	@preco DECIMAL (17,2)

AS
DECLARE @dataAtual DATE
	SET @dataAtual = (SELECT GETDATE())
	IF (@codServico <> 0)
		BEGIN 
			UPDATE tblServico SET descricao = @descricao, preco = @preco, dataAlteracao = @dataAtual WHERE codServico = @codServico
		END
	ELSE 
	BEGIN
		PRINT 'Valor(es) para alteração de dados incorreto(s)'
	END
GO
--EXEC usp_alterarPrecoServico



--------------------------
--------- [JAVA] ---------
--------------------------
-- [Java] ADMITIR FUNCIONARIO //FUNCIONANDO

CREATE PROCEDURE usp_admitirFuncionario
	@nomeFuncionario VARCHAR(50),
	@cpfFuncionario VARCHAR(14),
	@rgFuncionario NUMERIC(10),
	@emailFuncionario VARCHAR(100),
	@telefoneFuncionario VARCHAR(20),
	@dataNascimentoFuncionario DATE,
	@enderecoFuncionario VARCHAR(50),
	@cepFuncionario VARCHAR(9),
	@cidadeFuncionario VARCHAR(30),
	@estadoFuncionario CHAR(2),
	@loginFuncionario VARCHAR (30),
	@senhaFuncionario VARCHAR (30),
	@statusFuncionario VARCHAR(20),
	@codNivel NUMERIC (1) 
AS
DECLARE @idFuncionario NUMERIC(6), @dataAdmissao DATE
SET @dataAdmissao = (SELECT GETDATE())
	IF (@rgFuncionario <> 0) AND (@cpfFuncionario <> '')
		BEGIN
			INSERT INTO tblFuncionario VALUES (@nomeFuncionario, @cpfFuncionario, @rgFuncionario, @emailFuncionario, @telefoneFuncionario, @dataNascimentoFuncionario, @enderecoFuncionario, @cepFuncionario, @cidadeFuncionario, @estadoFuncionario, @loginFuncionario, @senhaFuncionario, @statusFuncionario, @dataAdmissao, NULL, NULL, @codNivel)
			SET @idFuncionario = (SELECT MAX(idFuncionario) FROM tblFuncionario)
			PRINT @idFuncionario
		END
	ELSE 
		BEGIN
			PRINT 'Valor(es) para cadastro incorreto(s)'
		END
GO
--EXEC usp_admitirFuncionario 

--------------------------
--------- [JAVA] ---------
--------------------------


--[JAVA] DEMISSÃO DE FUNCIONÁRIO //FUNCIONANDO

CREATE PROCEDURE usp_demitirFuncionario 
	@cpfFuncionario VARCHAR(14), 
	@razaoDemissao VARCHAR(200)
AS
DECLARE @dataDemissao DATE
SET @dataDemissao = (SELECT GETDATE())
	IF(@cpfFuncionario <> '')
		BEGIN 
			UPDATE tblFuncionario SET statusFuncionario = 'Demitido', dataDemissaoFuncionario = @dataDemissao, razaoDemissao = @razaoDemissao WHERE cpfFuncionario = @cpfFuncionario
		END
	ELSE 
		BEGIN
			PRINT 'Valor(es) para demissão incorreto(s)'
		END
GO
--EXEC usp_demitirFuncionario


--------------------------
--------- [JAVA] ---------
--------------------------

--[JAVA] PESQUISA DE FUNCIONÁRIO //FUNCIONANDO

CREATE PROCEDURE usp_pesquisarFuncionario
	@cpfFuncionario VARCHAR(14)
AS
	IF (@cpfFuncionario <> ' ')
		BEGIN 
			 SELECT * FROM tblFuncionario WHERE cpfFuncionario = @cpfFuncionario
		END
	ELSE
		BEGIN 
			PRINT 'Dado(s) não encontrados'
		END
GO
--EXEC usp_pesquisarFuncionario

--------------------------
--------- [JAVA] ---------
--------------------------


-- [JAVA] ATUALIZAÇÃO DE DADOS DE FUNCIONARIO
CREATE PROCEDURE usp_atualizarFuncionario
	@nomeFuncionario VARCHAR(50),
	@cpfFuncionario VARCHAR(14),
	@rgFuncionario NUMERIC(10),
	@emailFuncionario VARCHAR(100),
	@telefoneFuncionario VARCHAR(20),
	@dataNascimentoFuncionario DATE,
	@enderecoFuncionario VARCHAR(50),
	@cepFuncionario VARCHAR(9),
	@cidadeFuncionario VARCHAR(30),
	@estadoFuncionario VARCHAR(2),
	@loginFuncionario VARCHAR (30),
	@senhaFuncionario VARCHAR (30)
AS 
IF (@cpfFuncionario <> '') AND (@rgFuncionario <> 0)
	BEGIN
		UPDATE tblFuncionario SET nomeFuncionario = @nomeFuncionario, emailFuncionario = @emailFuncionario, telefoneFuncionario = @telefoneFuncionario, dataNascimentoFuncionario = @dataNascimentoFuncionario, enderecoFuncionario = @enderecoFuncionario, cepFuncionario = @cepFuncionario, cidadeFuncionario = @cidadeFuncionario, estadoFuncionario = @estadoFuncionario, loginFuncionario = @loginFuncionario, senhaFuncionario = @senhaFuncionario WHERE cpfFuncionario = @cpfFuncionario
		
		PRINT 'Dados Alterados!' 
	END
ELSE 
	BEGIN
		Print 'Dados insuficientes'
	END
GO

----------------------
-- [C#, Java, ASPX] --
----------------------

--PROCEDURE PARA LOGIN 
CREATE PROCEDURE usp_loginFuncionario 
	@loginFuncionario VARCHAR(30),
	@senhaFuncionario VARCHAR(30)
AS 
DECLARE @getLogin VARCHAR(30), @getSenha VARCHAR(30)
	SET @getLogin = (SELECT loginFuncionario FROM tblFuncionario WHERE loginFuncionario = @loginFuncionario)
	SET @getSenha = (SELECT senhaFuncionario FROM tblFuncionario WHERE senhaFuncionario = @senhaFuncionario)
IF (LEN(@getLogin) > 0) AND (LEN(@getSenha) > 0)
	BEGIN 
		IF (@getLogin <> '') AND  (@getSenha <> '')
			BEGIN 
				SELECT * FROM tblFuncionario WHERE loginFuncionario = @loginFuncionario AND senhaFuncionario = @senhaFuncionario
			END
	END
ELSE 
	BEGIN 
		SELECT ('Erro no Login') AS LOGGER
	END
GO	
--EXEC usp_loginFuncionario 'admin', '123'

-------------------------
-------- [C#] -----------
-------------------------

-- FORM PRINCIPAL DAL GRID CHECK IN
CREATE PROCEDURE usp_atualizarGridCheckIn
AS
DECLARE @dataAtual DATE
	SET @dataAtual = (SELECT GETDATE())	
SELECT r.codReserva, r.codQuarto, c.nomeCliente FROM tblReserva r INNER JOIN tblCliente c
	ON c.codCliente = r.codCliente AND dataEntrada = @dataAtual AND r.statusReserva = 'N'
GO
-- FORM PRINCIPAL DAL GRID CHECK OUT 
CREATE PROCEDURE usp_atualizarGridCheckOut
AS
DECLARE @dataAtual DATE
	SET @dataAtual = (SELECT GETDATE())
SELECT r.codReserva, r.codQuarto, c.nomeCliente FROM tblReserva r INNER JOIN tblCliente c
	ON c.codCliente = r.codCliente AND dataEntrada = @dataAtual AND r.statusReserva = 'F'
GO
	
-------------------------
--------- [C#] ----------
-------------------------

CREATE PROCEDURE usp_somaEstadia
	@codReserva NUMERIC(6)
AS
DECLARE @codQuarto NUMERIC(6),
		@qtdeHospede INT,
		@totalDias INT, 
		@valorQuarto DECIMAL(17,2),
		@valorEstadia DECIMAL(17,2),
		@precoCafe DECIMAL(17,2),
		@precoAlmoco DECIMAL(17,2), 
		@precoJantar DECIMAL(17,2),
		@precoPiscina DECIMAL(17,2), 
		@precoSauna DECIMAL(17,2),
		@precoJogos DECIMAL(17,2),
		@valorTotal DECIMAL(17,2), 
		@valorServicos DECIMAL(17,2)
		
-------------------
SET @codQuarto = (SELECT codQuarto FROM tblReserva WHERE codReserva = @codReserva)
SET @qtdeHospede = (SELECT qtdeHospede FROM tblReserva WHERE codReserva = @codReserva)
SET @totalDias = (SELECT DATEDIFF(DAY, dataEntrada, dataSaida) FROM tblReserva WHERE codReserva = @codReserva)
SET @valorQuarto = (SELECT preco FROM tblQuarto WHERE codQuarto = @codQuarto)
SET @valorEstadia = @valorQuarto * @totalDias
SET @valorTotal = 0
SET @valorServicos = 0
SET @precoCafe = (SELECT preco FROM tblServico WHERE codServico = 100001)
SET @precoAlmoco = (SELECT preco FROM tblServico WHERE codServico = 100002)
SET @precoJantar = (SELECT preco FROM tblServico WHERE codServico = 100003)
SET @precoPiscina = (SELECT preco FROM tblServico WHERE codServico = 100004)
SET @precoSauna = (SELECT preco FROM tblServico WHERE codServico = 100005)
SET @precoJogos = (SELECT preco FROM tblServico WHERE codServico = 100006)
-------------------


IF EXISTS (SELECT codServico FROM tblReserva_Servico WHERE codReserva = @codReserva AND codServico = 100001)
	BEGIN 
		SET @valorServicos += @precoCafe * @qtdeHospede * @totalDias
	END
IF EXISTS (SELECT codServico FROM tblReserva_Servico WHERE codReserva = @codReserva AND codServico = 100002)
	BEGIN 
		SET @valorServicos += @precoAlmoco * @qtdeHospede * @totalDias
	END
IF EXISTS (SELECT codServico FROM tblReserva_Servico WHERE codReserva = @codReserva AND codServico = 100003)
	BEGIN 
		SET @valorServicos += @precoJantar * @qtdeHospede * @totalDias
	END
IF EXISTS (SELECT codServico FROM tblReserva_Servico WHERE codReserva = @codReserva AND codServico = 100004)
	BEGIN 
		SET @valorServicos += @precoPiscina
	END
IF EXISTS (SELECT codServico FROM tblReserva_Servico WHERE codReserva = @codReserva AND codServico = 100005)
	BEGIN 
		SET @valorServicos += @precoSauna
	END
IF EXISTS (SELECT codServico FROM tblReserva_Servico WHERE codReserva = @codReserva AND codServico = 100006)
	BEGIN 
		SET @valorServicos += @precoJogos
	END
SET @valorTotal = @valorEstadia + @valorServicos
	
PRINT @valorEstadia
SELECT @valorServicos AS valorServicos
SELECT @valorTotal AS valorTotal
GO
-------------------------
--------- [C#] ----------
-------------------------

CREATE PROCEDURE usp_inserirReserva
	@idFuncionario NUMERIC(6),
	@codCliente NUMERIC(6),
	@codQuarto NUMERIC(6),
	@qtdeHospede INT,
	@dataEntrada DATE,
	@dataSaida DATE
AS
DECLARE @codReserva NUMERIC(6)
	INSERT INTO tblReserva VALUES
		(@idFuncionario, @codCliente, @codQuarto, @qtdeHospede, @dataEntrada, @dataSaida, 'N')
	SET @codReserva = (SELECT MAX(codReserva) FROM tblReserva WHERE codCliente = @codCliente)
	PRINT @codReserva
GO
--EXEC usp_inserirReserva (CODFUNC, CODCLI, CODQUARTO, QTDEHOSPEDES, DATAENTRADA, DATASAIDA)

--------------------------
--------- [ASPX] ---------
--------------------------

--CADASTRO DE CLIENTE (FUNCIONANDO)

CREATE PROCEDURE usp_cadastrarClienteASPX
	@nomeCliente VARCHAR(50), 
	@cpfCliente VARCHAR(14),
	@rgCliente NUMERIC(10),
	@dataNascimentoCliente DATE,
	@enderecoCliente VARCHAR(50),
	@cepCliente VARCHAR(9),
	@cidadeCliente VARCHAR(30),
	@estadoCliente CHAR(2),
	@emailCliente VARCHAR(100),
	@telefoneCliente VARCHAR(20)
AS
DECLARE @codCliente NUMERIC(6), @codigoCliente NUMERIC(6)
	IF NOT EXISTS (SELECT * FROM tblCliente WHERE cpfCliente = @cpfCliente AND rgCliente = @rgCliente)
		BEGIN
			IF (@cpfCliente <> '') AND (@rgCliente <> 0) 
				BEGIN
					INSERT INTO tblCliente VALUES
						(@nomeCliente, @cpfCliente, @rgCliente, @dataNascimentoCliente, @enderecoCliente, @cepCliente, @cidadeCliente, @estadoCliente, @emailCliente, @telefoneCliente)
					SET @codCliente = (SELECT codCliente FROM tblCliente WHERE cpfCliente = @cpfCliente)
					SELECT @codCliente AS codigoCli
				END
			ELSE 
				BEGIN 
					Print 'Dados incorretos'
				END
		END
	ELSE 
		BEGIN
			PRINT 'Dados já cadastrados'
			SET @codigoCliente = (SELECT codCliente FROM tblCliente WHERE cpfCliente = @cpfCliente)
			SELECT @codigoCliente AS codigoCli
		END
		
--EXEC usp_cadastrarClienteASPX nome, cpf, rg, dataNascimento, endereco, cep, cidade, estado, email,telefone
GO

--Cadastrar reserva 
CREATE PROCEDURE usp_cadastrarReservaASPX
	@descricao VARCHAR(80),
	@codCliente NUMERIC(6),
	@qtdeHospede INT,
	@idFuncionario NUMERIC(6),
	@dataEntrada DATE,
	@dataSaida DATE
AS
DECLARE @codQuarto NUMERIC(6), @codReserva NUMERIC(6)
SET @codQuarto = (SELECT TOP 1 codQuarto FROM tblQuarto WHERE descricao LIKE @descricao AND codQuarto NOT IN(SELECT codQuarto FROM tblReserva WHERE statusReserva LIKE 'F' OR statusReserva LIKE 'N') ORDER BY codQuarto DESC)
	IF (@qtdeHospede <> 0) 
		BEGIN 
			INSERT INTO tblReserva VALUES 
				(@idFuncionario, @codCliente, @codQuarto, @qtdeHospede, @dataEntrada, @dataSaida, 'W')
			SET @codReserva = (SELECT MAX(codReserva) FROM tblReserva WHERE codCliente = @codCliente)
			SELECT @codReserva AS codReserva
		END
--EXEC usp_cadastrarReservaASPX (descricao, codCliente, qtdeHospede, idFuncionario, dataEntrada, dataSaida)
GO

--Adicionar servico na reserva
CREATE PROCEDURE usp_adicionarServicoNaReserva
	@codReserva NUMERIC(6),
	@cafe CHAR(1),	--1 = true, 0 = false
	@almoco CHAR(1),
	@jantar CHAR(1),
	@piscina CHAR(1),
	@sauna CHAR(1),
	@jogos CHAR(1)
AS
IF (@cafe = 1)
	BEGIN 
		INSERT INTO tblReserva_Servico VALUES
			(@codReserva, 100001)
	END
IF (@almoco = 1)
	BEGIN 
		INSERT INTO tblReserva_Servico VALUES
			(@codReserva, 100002)
	END
IF (@jantar = 1)
	BEGIN 
		INSERT INTO tblReserva_Servico VALUES
			(@codReserva, 100003)
	END
IF (@piscina = 1)
	BEGIN 
		INSERT INTO tblReserva_Servico VALUES
			(@codReserva, 100004)
	END
IF (@sauna = 1)
	BEGIN 
		INSERT INTO tblReserva_Servico VALUES
			(@codReserva, 100005)
	END
IF (@jogos = 1)
	BEGIN 
		INSERT INTO tblReserva_Servico VALUES
			(@codReserva, 100006)
	END
GO
--EXEC usp_adicionarServicoNaReserva codReserva, 1/0 [6x]


-------------------------
--------- [C#] ----------
-------------------------

-- Alterar Status da Reserva após Check Out
CREATE PROCEDURE usp_statusCheckOut 
	@codReserva NUMERIC(6)
AS
IF (@codReserva <> 0)
	BEGIN 
		UPDATE tblReserva SET statusReserva = 'V' WHERE codReserva = @codReserva
	END
GO


-------------------------
-------- [ASPX] ---------
-------------------------

-- Modificar status da Reserva //FUNCIONANDO 
CREATE PROCEDURE usp_modificarStatusASPX 
	@codReserva NUMERIC(6), 
	@idFuncionario NUMERIC(6), 
	@aceitarReserva CHAR(1), -- Sendo: 1 = true, 0 = false 
	@recusarReserva CHAR(1)
AS
IF (@codReserva <> 0) AND (@idFuncionario <> 0)
	BEGIN
		IF (@aceitarReserva = 1)
			BEGIN 
				UPDATE tblReserva SET statusReserva = 'N', idFuncionario = @idFuncionario WHERE codReserva = @codReserva 
			END	
		IF (@recusarReserva = 1)
			BEGIN 
				UPDATE tblReserva SET statusReserva = 'R', idFuncionario = @idFuncionario WHERE codReserva = @codReserva
			END
	END
ELSE 
	BEGIN
		PRINT 'Código da reserva e/ou ID de Funcionario não fornecido(s)'
	END
--EXEC usp_modificarStatusASPX