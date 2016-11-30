USE MASTER
GO

IF EXISTS (SELECT 1 FROM SYSDATABASES WHERE name = 'HOTEL')
	DROP DATABASE HOTEL
GO

CREATE DATABASE HOTEL
GO

USE HOTEL
GO

CREATE TABLE tblCliente (
	codCliente NUMERIC(6) IDENTITY(100000,1) PRIMARY KEY,
	nomeCliente VARCHAR(50) NOT NULL,
	cpfCliente VARCHAR(14) NOT NULL,
	rgCliente VARCHAR(10) NOT NULL,
	dataNascimentoCliente DATE,
	enderecoCliente VARCHAR(50),
	cepCliente VARCHAR(9),
	cidadeCliente VARCHAR(30),
	estadoCliente CHAR(2),
	emailCliente VARCHAR(100),
	telefoneCliente VARCHAR(20),
)
GO

CREATE TABLE tblQuarto (
	codQuarto NUMERIC(6) PRIMARY KEY,
	descricao VARCHAR(80),
	numeroQuarto NUMERIC(3),
	preco DECIMAL (17,2),
	dataAlteracao DATE
)
GO

CREATE TABLE tblNivel 
(
	codNivel NUMERIC(1) PRIMARY KEY,
	descricao VARCHAR(12),
)
GO

CREATE TABLE tblFuncionario (
	idFuncionario NUMERIC(6) IDENTITY(100000,1) PRIMARY KEY,
	nomeFuncionario VARCHAR(50) NOT NULL,
	cpfFuncionario VARCHAR(11) NOT NULL,
	rgFuncionario VARCHAR(10) NOT NULL,
	emailFuncionario VARCHAR(100),
	telefoneFuncionario VARCHAR(12),
	dataNascimentoFuncionario DATE,
	enderecoFuncionario VARCHAR(50),
	cepFuncionario VARCHAR(9),
	cidadeFuncionario VARCHAR(30),
	estadoFuncionario CHAR(2),
	loginFuncionario VARCHAR (30),
	senhaFuncionario VARCHAR (30),
	statusFuncionario VARCHAR(20),
	dataAdmissaoFuncionario DATE,
	dataDemissaoFuncionario DATE,
	razaoDemissao VARCHAR(200),
	codNivel NUMERIC (1) 
		FOREIGN KEY REFERENCES tblNivel (codNivel),
)
GO

CREATE TABLE tblReserva (
	codReserva NUMERIC(6) IDENTITY(100000,1) PRIMARY KEY,
	idFuncionario NUMERIC(6) 
		FOREIGN KEY REFERENCES tblFuncionario (idFuncionario),
	codCliente NUMERIC(6) 
		FOREIGN KEY REFERENCES tblCliente (codCliente),
	codQuarto NUMERIC(6)
		FOREIGN KEY REFERENCES tblQuarto (codQuarto),
	qtdeHospede INT,
	dataEntrada DATE,
	dataSaida DATE,
	statusReserva CHAR(1),
)
GO

CREATE TABLE tblServico (
	codServico NUMERIC(6) PRIMARY KEY,
	descricao VARCHAR(50),
	preco DECIMAL (17,2),
	dataAlteracao DATE
)
GO

CREATE TABLE tblReserva_Servico (
	codReserva NUMERIC(6) 
		FOREIGN KEY REFERENCES tblReserva (codReserva),
	codServico NUMERIC(6) 
		FOREIGN KEY REFERENCES tblServico (codServico),
)
GO

CREATE TABLE tblNoShow (
	codReserva NUMERIC(6) 
		FOREIGN KEY REFERENCES tblReserva (codReserva),
	dataNoShow DATE,
)
GO

CREATE TABLE tblDetReserva (
	codReserva NUMERIC(6) 
		FOREIGN KEY REFERENCES tblReserva (codReserva),
)
GO

CREATE TABLE tblCorzinhas (
	corUm CHAR(6),
	corDois CHAR(6),
	imagemUm VARCHAR(200),
	imagemDois VARCHAR(200),
	imagemTres VARCHAR(200),
	imagemQuatro VARCHAR(200),	
)
GO

CREATE INDEX Xcliente ON tblCliente (codCliente)
GO

CREATE INDEX Xreserva ON tblReserva (codReserva)
GO

CREATE INDEX Xfuncionario ON tblFuncionario (idFuncionario)
GO

CREATE INDEX Xnoshow ON tblNoShow (codReserva)
GO

CREATE INDEX Xdetreserva ON tblDetReserva (codReserva)
GO



-----------------------------------
------- Status da Reserva ---------
-----------------------------------

-- C = Cancelada pelo cliente
-- N = Check in não realizado 
-- F = Check in realizado 
-- V = Concluída (Check Out realizado)
-- W = Esperando confirmação do painel de controle.
-- E = Encerrada por No - Show 
-- R = Recusada