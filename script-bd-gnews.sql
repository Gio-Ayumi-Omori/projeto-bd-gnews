CREATE TABLE noticia(

  id_noticia SERIAL PRIMARY KEY,
  titulo varchar(255),
  entrevista varchar(255),
  artigo varchar(255),
  data_publicacao timestamp,
  fk_jornalista int,
  fk_pessoa int,
  fk_tema int

);

INSERT INTO noticia (titulo, entrevista, artigo, data_publicacao) VALUES ('Terremoto em Cascavel', 'entrevista com Maria Jubiscreuda', 'Terremoto atinge o centro de Cascavel causando 3 mortes', '12/12/2012');

SELECT * FROM noticia;
