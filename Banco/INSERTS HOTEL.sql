USE HOTEL
GO
---------------------------------
----- INSERTS DE SERVIÇOS -------
---------------------------------

-- INSERT TABELA: SERVICO (codServico, descricao, preco, dataAlteracao

INSERT INTO tblServico VALUES (100001, 'Café da Manhã', '20.00', '10/10/2016')
INSERT INTO tblServico VALUES (100002, 'Almoço', '30.00', '10/10/2016')
INSERT INTO tblServico VALUES (100003, 'Jantar', '25.00', '10/10/2016')
INSERT INTO tblServico VALUES (100004, 'Piscina', '30.00', '10/10/2016')
INSERT INTO tblServico VALUES (100005, 'Sauna', '50.00', '10/10/2016')
INSERT INTO tblServico VALUES (100006, 'Salão de Jogos', '100.00', '10/10/2016')



---------------------------------
------ INSERTS DE QUARTOS -------
---------------------------------

--INSERT TABELA: QUARTO (cod, descricao, numero, preco)

--QUARTOS, NORMAIS: SOLTEIRO 
INSERT INTO tblQuarto VALUES (011101, 'Quarto Normal - Solteiro', 001, 30.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011102, 'Quarto Normal - Solteiro', 002, 30.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011103, 'Quarto Normal - Solteiro', 003, 30.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011104, 'Quarto Normal - Solteiro', 004, 30.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011105, 'Quarto Normal - Solteiro', 005, 30.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011106, 'Quarto Normal - Solteiro', 006, 30.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011107, 'Quarto Normal - Solteiro', 007, 30.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011108, 'Quarto Normal - Solteiro', 008, 30.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011109, 'Quarto Normal - Solteiro', 009, 30.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011110, 'Quarto Normal - Solteiro', 010, 30.00, '10/10/2016')

--QUARTOS, NORMAIS: CASAL
INSERT INTO tblQuarto VALUES (011201, 'Quarto Normal - Casal', 011, 50.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011202, 'Quarto Normal - Casal', 012, 50.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011203, 'Quarto Normal - Casal', 013, 50.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011204, 'Quarto Normal - Casal', 014, 50.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011205, 'Quarto Normal - Casal', 015, 50.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011206, 'Quarto Normal - Casal', 016, 50.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011207, 'Quarto Normal - Casal', 017, 50.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011208, 'Quarto Normal - Casal', 018, 50.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011209, 'Quarto Normal - Casal', 019, 50.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011210, 'Quarto Normal - Casal', 020, 50.00, '10/10/2016')

--QUARTOS, NORMAIS: FAMÍLIA
INSERT INTO tblQuarto VALUES (011301, 'Quarto Normal - Família', 021, 60.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011302, 'Quarto Normal - Família', 022, 60.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011303, 'Quarto Normal - Família', 023, 60.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011304, 'Quarto Normal - Família', 024, 60.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011305, 'Quarto Normal - Família', 025, 60.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011306, 'Quarto Normal - Família', 026, 60.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011307, 'Quarto Normal - Família', 027, 60.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011308, 'Quarto Normal - Família', 028, 60.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011309, 'Quarto Normal - Família', 029, 60.00, '10/10/2016')
INSERT INTO tblQuarto VALUES (011310, 'Quarto Normal - Família', 030, 60.00, '10/10/2016')

--QUARTOS, SUÍTES: SOLTEIRO
INSERT INTO tblQuarto VALUES (022101, 'Quarto Suite - Solteiro', 101, '50.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022102, 'Quarto Suite - Solteiro', 102, '50.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022103, 'Quarto Suite - Solteiro', 103, '50.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022104, 'Quarto Suite - Solteiro', 104, '50.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022105, 'Quarto Suite - Solteiro', 105, '50.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022106, 'Quarto Suite - Solteiro', 106, '50.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022107, 'Quarto Suite - Solteiro', 107, '50.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022108, 'Quarto Suite - Solteiro', 108, '50.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022109, 'Quarto Suite - Solteiro', 109, '50.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022110, 'Quarto Suite - Solteiro', 110, '50.00', '10/10/2016')

--QUARTOS, SUÍTES: CASAL
INSERT INTO tblQuarto VALUES (022201, 'Quarto Suite - Casal', 111, '80.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022202, 'Quarto Suite - Casal', 112, '80.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022203, 'Quarto Suite - Casal', 113, '80.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022204, 'Quarto Suite - Casal', 114, '80.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022205, 'Quarto Suite - Casal', 115, '80.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022206, 'Quarto Suite - Casal', 116, '80.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022207, 'Quarto Suite - Casal', 117, '80.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022208, 'Quarto Suite - Casal', 118, '80.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022209, 'Quarto Suite - Casal', 119, '80.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022210, 'Quarto Suite - Casal', 120, '80.00', '10/10/2016')

--QUARTOS, SUÍTES: FAMÍLIA
INSERT INTO tblQuarto VALUES (022301, 'Quarto Suite - Família', 121, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022302, 'Quarto Suite - Família', 122, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022303, 'Quarto Suite - Família', 123, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022304, 'Quarto Suite - Família', 124, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022305, 'Quarto Suite - Família', 125, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022306, 'Quarto Suite - Família', 126, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022307, 'Quarto Suite - Família', 127, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022308, 'Quarto Suite - Família', 128, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022309, 'Quarto Suite - Família', 129, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (022310, 'Quarto Suite - Família', 130, '100.00', '10/10/2016')

--QUARTOS, LUXO: SOLTEIRO
INSERT INTO tblQuarto VALUES (033101, 'Quarto Luxo - Solteiro', 201, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033102, 'Quarto Luxo - Solteiro', 202, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033103, 'Quarto Luxo - Solteiro', 203, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033104, 'Quarto Luxo - Solteiro', 204, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033105, 'Quarto Luxo - Solteiro', 205, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033106, 'Quarto Luxo - Solteiro', 206, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033107, 'Quarto Luxo - Solteiro', 207, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033108, 'Quarto Luxo - Solteiro', 208, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033109, 'Quarto Luxo - Solteiro', 209, '100.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033110, 'Quarto Luxo - Solteiro', 210, '100.00', '10/10/2016')

--QUARTOS, LUXO: CASAL
INSERT INTO tblQuarto VALUES (033201, 'Quarto Luxo - Casal', 211, '170.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033202, 'Quarto Luxo - Casal', 212, '170.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033203, 'Quarto Luxo - Casal', 213, '170.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033204, 'Quarto Luxo - Casal', 214, '170.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033205, 'Quarto Luxo - Casal', 215, '170.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033206, 'Quarto Luxo - Casal', 216, '170.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033207, 'Quarto Luxo - Casal', 217, '170.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033208, 'Quarto Luxo - Casal', 218, '170.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033209, 'Quarto Luxo - Casal', 219, '170.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033210, 'Quarto Luxo - Casal', 220, '170.00', '10/10/2016')

--QUARTOS, LUXO (FAMÍLIA)
INSERT INTO tblQuarto VALUES (033301, 'Quarto Luxo - Família', 221, '200.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033302, 'Quarto Luxo - Família', 222, '200.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033303, 'Quarto Luxo - Família', 223, '200.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033304, 'Quarto Luxo - Família', 224, '200.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033305, 'Quarto Luxo - Família', 225, '200.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033306, 'Quarto Luxo - Família', 226, '200.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033307, 'Quarto Luxo - Família', 227, '200.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033308, 'Quarto Luxo - Família', 228, '200.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033309, 'Quarto Luxo - Família', 229, '200.00', '10/10/2016')
INSERT INTO tblQuarto VALUES (033310, 'Quarto Luxo - Família', 230, '200.00', '10/10/2016')


---------------------------------
----- INSERTS DE CLIENTES -------
---------------------------------

--INSERT TABELA: Cliente (cod, nome, cpf, rg, dataNascimento, endereco, cep, cidade, email, telefone)
INSERT INTO tblCliente VALUES ('José Francisco Sanches', '54823541722', '541256621', '25/12/1964', 'Rua Alves Albuquerque, nº52', '54875545', 'São Paulo', 'SP', 'jfernandes@gmail.com', '01139754518')
INSERT INTO tblCliente VALUES ('Janaína Thamires dos Santos', '45823645101', '521689531', '4/5/1983', 'Avenida Carlos Mangos, nº33', '23411760', 'São Paulo', 'SP', 'jana.santos@gmail.com', '011985471236')
INSERT INTO tblCliente VALUES ('José Saramago', '35002471522', '254146426', '3/1/1989', 'Viela do Tiro, nº66', '94522100', 'São Paulo', 'SP', 'jsaramago@gmail.com', '011954221563')
INSERT INTO tblCliente VALUES ('Samuel Jorge', '85019316083', '987327320', '30/03/1996', 'Rua Afonso XIII, 345', '28212000', 'Sao Paulo', 'SP', 'jorge.samuel23@outlook.com', '1198757427')
INSERT INTO tblCliente VALUES ('Isadora Jesus', '35582457410', '823820185', '25/12/1990', 'Rua L, 34', '83838288', 'Goiania', 'GO', 'jesus.isador4@yahoo.com.br', '62977268811')
INSERT INTO tblCliente VALUES ('Daniel Ferreira', '85255289787', '372829829', '03/03/1997', 'Rua Jose Neves, 38', '32832111', 'São Paulo', 'SP', 'ferreira.dani3l@gmail.com,', '11986481123')
INSERT INTO tblCliente VALUES ('Joao Pedro', '23810168998', '382832291', '18/01/1990', 'Av Heitor Doyle Maya, 283', '83864000', 'Rio de Janeiro', 'RJ', 'pedrinho123@hotmail.com', '14964543254')
INSERT INTO tblCliente VALUES ('Pedro Joao', '93136565231', '429832981', '08/07/1986', 'Rua Oscar Voldeta, 3281', '01987002', 'Rio de Janeiro', 'RJ', 'joaopedro374@hotmail.com', '14997327187')
INSERT INTO tblCliente VALUES ('Daniel Edson', '09865936456', '832732384', '09/10/1970', 'Rua Socrates, 821', '89327111', 'Sao Paulo', 'SP','edinhodani@gmail.com', '11983388112')
INSERT INTO tblCliente VALUES ('Mariana da Silva', '41263599907', '3678261170', '12/07/1987', 'Rua Borba Gato, 90', '73270000', 'Sao Paulo', 'SP', 'mari.silva172@hotmail.com', '11968743200')
INSERT INTO tblCliente VALUES ('Nicole Santos', '72864638371', '643792112', '13/12/1989','Av Antonio Carlos Costa, 321', '82381000', 'Osasco', 'SP', 'santos.nick183@gmail.com', '11974354210')
INSERT INTO tblCliente VALUES ('Yasmin Leoncio', '06697427167', '983273089', '17/02/1960', 'Rua Raimunda, 327', '29383000', 'Goiania', 'GO', 'le.yasmin@gmail.com', '62948382450')
INSERT INTO tblCliente VALUES ('Sara Dutra', '65614359826', '628953416', '08/08/1988', 'Rua Alexandre Gusmao, 383', '98310910', 'Sao Paulo', 'SP', 'sarinha2837@hotmail.com', '11999970812')
INSERT INTO tblCliente VALUES ('Caio Henrique Lima', '53003780204', '404087303', '27/01/1998', 'Rua Pavao, 372', '09134578', 'Santo Andre', 'SP', 'caio.metal23@gmail.com', '11998371829')
INSERT INTO tblCliente VALUES ('Vinicius Lima', '13568006960', '789203451', '05/08/1995', 'Rua Fioravante Rossi, 2382', '82193821', 'Vitoria', 'ES', 'nasc.vinicius@hotmail.com', '31987362866')
INSERT INTO tblCliente VALUES ('Agatha Morais', '14096379050', '419637905', '09/01/1994', 'Rua Tilia, 328','37231000', 'Osasco', 'SP', 'agatha.mor18@gmail.com', '11937290333')
INSERT INTO tblCliente VALUES ('Otavio Mota', '85968216271', '598862162', '31/12/1993', 'Rua Papoula, 182', '82361000', 'Osasco', 'SP', 'mota.otavio82@hotmail.com', '11983289900')
INSERT INTO tblCliente VALUES ('Alice Freire', '62106030258', '612063258', '01/05/1960', 'Rua Verdum, 2873', '38917200', 'Riberao Preto', 'SP', 'alice.f183@outlook.com', '11947642190')
INSERT INTO tblCliente VALUES ('Ian Hudson', '93809294551', '482732109', '02/06/1987', 'Estrada da Gabiroba, 3872', '87327110', 'Osasco', 'SP', 'hudson.ian189@hotmail.com', '11947319081')
INSERT INTO tblCliente VALUES ('Catarina Vicalvi', '57465467551', '382937201', '12/09/1987', 'Rua Albert Sabin, 212', '89372000', 'Cuiaba', 'MS', 'cat.vicalvi289@gmail.com', '6717323719')
INSERT INTO tblCliente VALUES ('Davi Assis', '69510130044', '382732109', '07/08/1980', 'Av Hildebrando de Lima, 281', '39827300', 'Osasco', 'SP', 'da.ssis2891@outlook.com', '11985347281')
INSERT INTO tblCliente VALUES ('Lucas Almeida', '72319229108', '819229123', '06/08/1991', 'Rua Aurora Soares Barbosa, 2812', '38273000', 'Osasco', 'SP', 'alm.lucas0218@hotmail.com', '11982873100')
INSERT INTO tblCliente VALUES ('Ana Beatriz Simeao', '55621488202', '327983199', '02/10/1998', 'Av Pref Hirant Sanazar, 82', '98310900', 'Osasco', 'SP', 'aninha.simeao@hotmail.com', '11981729000')
INSERT INTO tblCliente VALUES ('Ana Paula Medeiros', '20822142813', '318390204', '07/08/1986', 'Av. Jose Barbosa de Siqueira, 19', '98338000', 'Osasco', 'SP', 'paula.medeiros@gmail.com', '11974362890')
INSERT INTO tblCliente VALUES ('Maria de Jesus', '18824024998', '288993001', '09/02/1990', 'Rua Gazzi de Sa, 18', '82832050', 'Rio de Janeiro', 'RJ', 'maria2818@hotmail.com', '14987065430')
INSERT INTO tblCliente VALUES ('Esther Nascimento', '80083469737', '183469737', '17/01/1989', 'Av. Cupece, 1819', '39823105', 'São Paulo', 'SP', 'nascimento.the@hotmail.com', '11947398291')
INSERT INTO tblCliente VALUES ('Lucca Dutra', '80634166352', '526613413', '16/11/1986', 'Rua Riacho das Ovelhas, 460', '45090170', 'Natal', 'RN', 'dutra.lucc4@outlook.com', '8483732500')
INSERT INTO tblCliente VALUES ('Bryan Defende', '89705659575', '756958976', '06/06/1996', '4ª Avenida, 37', '32873100', 'Balneario Camboriu', 'SC', 'def.bryan@gmail.com', '4793982298')
INSERT INTO tblCliente VALUES ('Joaquim Gomes', '91318153166', '237082838', '03/09/1989', 'Tv. Aristides Gomes, 328', '32632900', 'Natal', 'RN', 'gom.joaqu1m@hotmail.com', '8493972310')
INSERT INTO tblCliente VALUES ('Antonio Aleixo', '04922883124', '492288314', '11/11/1992', 'Via WS Norte, 218', '48722777', 'Brasilia', 'DF', 'ant.aleixo@gmail.com', '61984763280')
INSERT INTO	tblCliente VALUES ('Francisco Ramos', '17441686954', '382631995', '27/11/1992', 'Rua Carlos Von Joseritz, 1910', '98643100', 'Porto Alegre', 'RS', 'ram.francisc0@outlook.com', '51987243640')
INSERT INTO tblCliente VALUES ('Enzo Barbosa', '2388539538', '4329743278', '23/10/1986', 'Rua Atanasio Belmonte, 70', '66473840' ,'Porto Alegre', 'RS', 'bar.enz0@gmail.com', '51990394273')
INSERT INTO tblCliente VALUES ('Davi Gomes', '64897771773', '821739128', '15/11/1973', 'Rua Hercules, 283', '87462467', 'Vitoria', 'ES', 'davigom35@yahoo.com.br', '2798574300')
INSERT INTO tblCliente VALUES ('Gabriel Portela', '26306658440', '387263188', '06/11/1959', 'Rua Vila Bela, 382', '63241250', 'Belo Horizonte', 'MG', 'gabriel.portelagom@gmail.com', '31957457300')
INSERT INTO tblCliente VALUES ('Isaac Silva', '78473116585', '3728631181', '05/03/1997', 'Rua JK, 83', '36276329', 'Goiania', 'GO', 'is44csilva@outlook.com', '6298327329')
INSERT INTO tblCliente VALUES ('Matheus Pinheiro', '34407371609', '83626377X', '12/09/1988', 'Rua Gomes Taborda, 55', '50720650', 'Recife', 'PE', 'gal.math@yahoo.com', '8136542623')
INSERT INTO tblCliente VALUES ('Luiza Graf', '62663687570', '87326518Y', '05/05/1998', 'Rua Felicissimo de Azevedo, 71', '90540110', 'Porto Alegre', 'RS', 'graf.luiza135@gmail.com', '51948219727')
INSERT INTO tblCliente VALUES ('Marcus Souza', '49612040303', '87873261M', '11/12/1988', 'Rua Vila Bela, 100', '32683200', 'Belo Horizonte', 'MG', 'souza.marquinhos@gmail.com', '31936287601')
INSERT INTO tblCliente VALUES ('Giovanne Souza', '80157966445', '663287621', '11/08/1961', 'Rua Herval Silva, 1372', '87632181', 'Belo Horizonte', 'MG', 'souza.gio@outlook.com', '32193287689')
INSERT INTO tblCliente VALUES ('Rodrigo Bohr', '58352106988', '736645191', '07/10/1997', 'Rua Codoma, 2376', '87432690', 'Balneario Camboriu', 'SC', 'rodriguo273@outlook.com', '47987528680')
INSERT INTO tblCliente VALUES ('Debora Alves', '55427401547', '43472588X', '28/02/1992', 'Rua Goncalves Dias, 340', '36287500', 'Belo Horizonte', 'MG', 'alves.debora72@hotmail.com', '31984763210')
INSERT INTO tblCliente VALUES ('Adrielly Falcao', '84082909672', '372272982', '03/04/1989', 'Av. Gunter Hans, 227', '36287891', 'Cuiaba', 'MS', 'fal.dryka@hotmail.com', '67946371807')
INSERT INTO tblCliente VALUES ('Pedro Paulo Andrade', '57505834223', '783648736', '07/12/1977', 'Rua Teixeira de Freitas, 326', '36763200', 'Belo Horizonte', 'MG', 'and.paulo.pedro@gmail.com', '31973416870')


---------------------------------
------- NIVEIS DE ACESSO --------
---------------------------------

--INSERT TABELA: Nivel (cod, descrição)
INSERT INTO tblNivel VALUES (0, 'Gerente')
INSERT INTO tblNivel VALUES (1, 'Funcionário')



---------------------------------
---- INSERTS DE FUNCIONARIOS ----
---------------------------------


--INSERT TABELA: Funcionario 
-- Campos: (nome, cpf, rg, email, telefone, dataNascimento, endereco, cep, cidade, estado, login, senha, dataAdmissao, dataDemissao, razaoDemissao, nivel)
INSERT INTO tblFuncionario VALUES ('Pafuncio Figueredo', '52177455512', '549682531', 'Pafu.edo@bol.com.br', '011365874654', '15/03/1945', 'Rua Almirante Aqbar, nº57', '54786020', 'São Paulo', 'SP', 'admin', '123', 'Admitido', '01/01/2014', NULL, '', 0)
INSERT INTO tblFuncionario VALUES ('Josemar Albuquerque', '20456822273', '2356854892', 'zequerque@ig.com.br', '011985472546', '29/08/1980', 'Rua Aldair Lahad, nº1568', '90244000', 'São Paulo', 'SP', 'func', '321', 'Admitido', '01/01/2014', NULL, '', 1)
INSERT INTO tblFuncionario VALUES ('Miguel Silva', '21104796201', '119867549', 'miguel.silva@gmail.com', '11987564000', '27/10/1988', 'Rua Florencio de Abril, 129', '01988222', 'São Paulo', 'SP', 'miguel123', 'p@ssword', 'Admitido', '01/01/2014', NULL, NULL, 0)
INSERT INTO tblFuncionario VALUES ('Helena Ramos', '20218745400', '784535348', 'heleninha04@gmail.com', '11987583474', '07/09/1987', 'Avenida dos Autonomistas, 832', '25544003', 'Osasco', 'SP', 'h3l3n4', ']5Ez*\3', 'Admitido', '01/04/2014', NULL, NULL, 0)
INSERT INTO tblFuncionario VALUES ('Rafael Nogueira', '57041191311', '203695912', 'rafael.zika@hotmail.com', '11956887715', '12/10/1989', 'Rua Sao Mauricio, 33', '58934532', 'Osasco', 'SP', 'r4f@el', '%ZObJ}~/', 'Demitido', '28/02/2014', '27/06/2015', 'Justa causa', 1)
INSERT INTO tblFuncionario VALUES ('Luiza Carvalho', '57102702701', '986478487', 'luizinhagameplay@yahoo.com.br', '11947471234', '03/03/1993', 'Rua dos Marianos, 2222', '89752031', 'Osasco', 'SP', 'Lu1zaCarv', ':x3sb++B', 'Demitido', '25/05/2014', '25/07/2014', 'Furto', 1)
INSERT INTO tblFuncionario VALUES ('Manuela Goncalves', '43450066609', '667893563', 'gonc.manuela@outlook.com', '1187362382', '17/08/1988', 'Rua Andre Rovai, 763', '28282111', 'Osasco', 'SP', 'GoncM4nu', '"#@6d<w^', 'Admitido', '07/08/2015', NULL, NULL, 1)
INSERT INTO tblFuncionario VALUES ('Nicolas Santos', '82224246706', '567363420', 'nick.santos@gmail.com', '11977767372', '16/05/1990', 'Rua Mal.Edgar de Oliveira, 45', '32283000', 'Osasco', 'SP', 'NicolasS4n', '<oht4@UA', 'Admitido', '07/08/2015', NULL, NULL, 1)
INSERT INTO tblFuncionario VALUES ('Guilherme Gomes', '06183496774', '943789874', 'gui.g0mes@hotmail.com', '11932723298', '01/02/1970', 'Rua Bem-Te-Vi, 234', '23732000', 'Osasco', 'SP', 'Guilherm3', '?USBTrqu', 'Admitido', '25/05/2014', NULL, NULL, 0)
INSERT INTO tblFuncionario VALUES ('Jose Santos', '10752532251', '237236723', 'san.jos3@gmail.com', '1132872398', '02/01/1991', 'Rua Jequie, 782', '74784888', 'Osasco', 'SP', 'JoseSant0s', 'Ii}G-.eW', 'Admitido', '01/04/2014', NULL, NULL, 1)
INSERT INTO tblFuncionario VALUES ('Joao Fagundes', '63331702757', '982737225', 'fag.joa0@hotmail.com', '1197647328', '05/05/1995', 'Av. Ipe, 720', '83737000', 'Osasco', 'SP', 'F4g1995', '"(q5\f0', 'Demitido', '01/09/2014', '25/09/2014', 'Briga com cliente', 1)
INSERT INTO tblFuncionario VALUES ('Luiz Ricardo', '92886510718', '263656781', 'luiz.ric@yahoo.com.br', '1197857381', '07/10/1988', 'Av Jatoba, 4783', '37298328', 'Osasco', 'SP', 'p4g0d3', 'IX-w+EJW', 'Demitido', '09/05/2015', '06/10/2016', 'Faltas', 1)
INSERT INTO tblFuncionario VALUES ('Fantasma', '31150661127', '342646632', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)


---------------------------------
----- INSERTS DE RESERVAS -------
---------------------------------

--Campos: (idFuncionario, codCliente, codQuarto, qtdeHospedes, dataEntrada, dataSaida, statusReserva)
INSERT INTO tblReserva VALUES (100000, 100000, 011110, 1, '01/11/2016', '07/11/2016', 'V')
INSERT INTO tblReserva VALUES (100001, 100001, 011210, 1, '04/11/2016', '10/11/2016', 'V')
INSERT INTO tblReserva VALUES (100002, 100002, 011303, 2, '05/11/2016', '10/11/2016', 'V')
INSERT INTO tblReserva VALUES (100003, 100003, 033310, 1, '11/01/2016', '20/01/2016', 'V')
INSERT INTO tblReserva VALUES (100004, 100014, 022102, 1, '03/11/2016', '05/11/2016', 'V')
INSERT INTO tblReserva VALUES (100009, 100005, 011105, 1, '05/11/2016', '10/11/2016', 'V')
INSERT INTO tblReserva VALUES (100002, 100034, 033301, 1, '06/11/2016', '07/11/2016', 'C')
INSERT INTO tblReserva VALUES (100000, 100004, 011106, 1, '03/11/2016', '08/11/2016', 'V')
INSERT INTO tblReserva VALUES (100003, 100030, 033310, 2, '04/06/2016', '17/06/2016', 'V')
INSERT INTO tblReserva VALUES (100003, 100010, 022309, 3, '02/07/2016', '18/07/2016', 'C')
INSERT INTO	tblReserva VALUES (100009, 100010, 022108, 1, '04/07/2016', '06/07/2016', 'V')
INSERT INTO tblReserva VALUES (100009, 100019, 033310, 1, '01/11/2016', '09/11/2016', 'V')
INSERT INTO tblReserva VALUES (100009, 100009, 033209, 3, '01/11/2016', '10/11/2016', 'V')
INSERT INTO tblReserva VALUES (100002, 100029, 011304, 2, '21/11/2016', '27/11/2016', 'F')
INSERT INTO tblReserva VALUES (100003, 100002, 022102, 1, '23/11/2016', '28/11/2016', 'N')
INSERT INTO tblReserva VALUES (100009, 100014, 033303, 1, '24/11/2016', '28/11/2016', 'E')
INSERT INTO tblReserva VALUES (100009, 100011, 011102, 1, '19/11/2016', '23/11/2016', 'F')
INSERT INTO tblReserva VALUES (100000, 100012, 022101, 1, '18/11/2016', '25/11/2016', 'F')
INSERT INTO tblReserva VALUES (100001, 100024, 011306, 1, '23/11/2016', '30/11/2016', 'N')
INSERT INTO tblReserva VALUES (100002, 100005, 011205, 2, '22/11/2016', '28/11/2016', 'N')
INSERT INTO tblReserva VALUES (100003, 100007, 011106, 1, '21/11/2016', '30/11/2016', 'F')
INSERT INTO tblReserva VALUES (100004, 100015, 022301, 1, '24/11/2016', '01/12/2016', 'N')
INSERT INTO tblReserva VALUES (100007, 100017, 033103, 1, '21/11/2016', '30/11/2016', 'F')
INSERT INTO tblReserva VALUES (100008, 100016, 022202, 2, '22/11/2016', '29/11/2016', 'N')
INSERT INTO tblReserva VALUES (100007, 100011, 011104, 1, '21/11/2016', '30/11/2016', 'F')
INSERT INTO tblReserva VALUES (100008, 100008, 033302, 1, '24/11/2016', '01/12/2016', 'N')
INSERT INTO tblReserva VALUES (100009, 100000, 022205, 3, '23/11/2016', '01/12/2016', 'N')
INSERT INTO tblReserva VALUES (100012, 100013, 033105, 1, '27/11/2016', '01/12/2016', 'W')
INSERT INTO tblReserva VALUES (100012, 100041, 022107, 1, '01/12/2016', '16/12/2016', 'W')
INSERT INTO tblReserva VALUES (100008, 100035, 011109, 1, '22/11/2016', '03/12/2016', 'N')
INSERT INTO tblReserva VALUES (100001, 100036, 011209, 3, '23/11/2016', '30/11/2016', 'N')
INSERT INTO tblReserva VALUES (100000, 100040, 011104, 1, '21/11/2016', '29/11/2016', 'F')
INSERT INTO tblReserva VALUES (100009, 100020, 011203, 2, '22/11/2016', '24/11/2016', 'N')
INSERT INTO tblReserva VALUES (100007, 100021, 011304, 1, '21/11/2016', '24/11/2016', 'F')
INSERT INTO tblReserva VALUES (100008, 100033, 022106, 1, '21/11/2016', '30/11/2016', 'F')
INSERT INTO tblReserva VALUES (100003, 100040, 022307, 4, '22/11/2016', '28/11/2016', 'N')
INSERT INTO tblReserva VALUES (100004, 100042, 033302, 2, '23/11/2016', '27/11/2016', 'N')
INSERT INTO tblReserva VALUES (100002, 100039, 011101, 1, '21/11/2016', '25/11/2016', 'F')

---------------------------------
------------- CORES -------------
---------------------------------
INSERT INTO tblCorzinhas VALUES ('800000', 'c39a6b', 'hotelcolorado.jpg', 'quarto5.jpg', 
	'degrade-logo.jpg', 'street-wallpaper.jpg')

---------------------------------
-------- FIM DOS INSERTS --------
---------------------------------

SELECT * FROM tblFuncionario
SELECT * FROM tblCliente