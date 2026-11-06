CREATE TABLE noticia(
  
  id_noticia SERIAL PRIMARY KEY,
  titulo varchar(255),
  subtitulo varchar(255),
  conteudo_texto varchar(255),
  status varchar(255),
  data_publicacao timestamp,
  data_criacao timestamp,
  id_jornalista int,
  id_categoria int,
  CONSTRAINT fk_jornalista FOREIGN KEY (id_jornalista) REFERENCES jornalista (id_jornalista),
  CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria) 

);

INSERT INTO noticia (titulo, subtitulo, conteudo_texto, status) VALUES ('');

SELECT * FROM noticia;
