INSERT INTO TipoUsuario(TituloTipoUsuario)   VALUES ('Administrador'), ('Comum')
 
INSERT INTO TipoEvento(TituloTipoEvento)  VALUES ('C#'), ('React'), ('Sql')

INSERT INTO Instituicao(Cnpj, NomeFantasia, Endereco)  VALUES ('11111111111111', 'Escola SENAI de Informática', 'Alameda Barão de Limeira, 538')

INSERT INTO Usuario(Nome, Email, Senha, DataCadastro, Genero, IdTipousuario)  VALUES ('Administrador', 'adm@adm.com', 'adm123', '03/02/2020', 'Masculino', 1), ('Carol', 'carol@email.com', 'carol123', '06/02/2000', 'Feminino', 2), ('Saulo', 'saulo@email.com', 'saulo123', '05/03/2000', 'Não Informado', 2) 

INSERT INTO Evento(IdTipoEvento, IdInstituicao, NomeEvento, AcessoLivre, DataEvento, Descricao)  VALUES ( 1, 1, 'Projetos em SQL', 1, '07/02/2000', 'Como utilizar os ciclos de vida com a biblioteca ReactJs'), ( 2, 1, 'Ciclo da Vida', 0, '01/02/2020', 'Conceitos sobre os pilares da programação orientada a objetos'), 
( 3, 1, 'Introdução Sql', 1, '03/04/2021', 'Comandos básicos utilizando SQL Server')


INSERT  INTO Presenca(IdUsuario, IdEvento, Situacao)  VALUES ( 5, 5, 'Confirmada'), ( 6, 6, 'Não Confirmada'), ( 6, 7, 'Confirmada')

