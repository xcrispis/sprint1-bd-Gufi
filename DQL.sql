--LISTAR TODOS OS USUARIOS CADASTRADOS
SELECT Usuario.Nome, Usuario.Senha, Usuario.Email, Usuario.DataCadastro, Usuario.Genero, TipoUsuario.TituloTipoUsuario FROM Usuario
INNER JOIN TipoUsuario ON Usuario.IdTipousuario=TipoUsuario.IdTipoUsuario
--LISTAR TODAS AS INSTITUIÇÕES CADASTRADAS
SELECT * FROM Instituicao
--LISTAR TODOS OS TIPOS DE EVENTOS
SELECT * FROM TipoEvento
--LISTAR TODOS OS EVENTOS
SELECT NomeEvento, DataEvento, Descricao, AcessoLivre, Instituicao.NomeFantasia, TipoEvento.TituloTipoEvento FROM Evento
INNER JOIN Instituicao ON Instituicao.IdInstituicao=Evento.IdInstituicao
INNER JOIN TipoEvento ON TipoEvento.IdTipoEvento=Evento.IdTipoEvento
--LISTAR APENAS O EVENTOS QUE SÃO PUBLICOS
  SELECT NomeEvento, DataEvento, Descricao,AcessoLivre = CASE AcessoLivre WHEN 1 THEN 'Livre' ELSE 'Privado' END, Instituicao.NomeFantasia, TipoEvento.TituloTipoEvento FROM Evento
  INNER JOIN Instituicao ON Instituicao.IdInstituicao=Evento.IdInstituicao
  INNER JOIN TipoEvento ON TipoEvento.IdTipoEvento=Evento.IdTipoEvento
--LISTAR TODOS OS EVENTOS QUE UM DETERMINADO USUARIO PARTICIPA
SELECT IdUsuario, Evento.NomeEvento, Situacao FROM Presenca
INNER JOIN Evento ON Evento.IdEvento=Presenca.IdEvento
WHERE IdUsuario=5 AND Situacao='Confirmada'
--USAR INNER JOIN EM TUDO