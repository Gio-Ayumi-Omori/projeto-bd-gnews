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

CREATE TABLE curtida_noticia(

  id_curtida SERIAL PRIMARY KEY,
  id_noticia int,
  id_usuario int,
  fk_jornalista int,
  data_reacao timestamp,
  CONSTRAINT fk_jornalista FOREIGN KEY (fk_jornalista) REFERENCES jornalista (id_jornalista)

);

CREATE TABLE jornalista(

  id_jornalista SERIAL PRIMARY KEY,
  id_usuario int,
  registro_profissional varchar(50),
  biografia character varying(255),
  especialidade varchar(100),
  CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario)

);
