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


CREATE TABLE historico_revisao (

  id_historico SERIAL PRIMARY KEY,
  id_noticia int,
  id_editor int,
  observacao_revisao varchar (255),
  status_aplicado varchar (255),
  data_alteracao timestamp
  
);

SELECT * FROM historico_revisao;

INSERT INTO  historico_revisao(observacao_revisao, status_aplicado, data_alteracao) VALUES ('Observação concluida com sucesso e sem erros', 'Ok', '2026-12-30 14:30:00' );

CREATE TABLE midia_noticia (
  
  id_midia SERIAL PRIMARY KEY,
  id_noticia int,
  tipo_midia varchar(255),
  url_arquivo varchar(500),
  legenda varchar(255),
  data_upload timestamp

);         

SELECT * FROM midia_noticia;

INSERT INTO  midia_noticia(tipo_midia, url_arquivo, legenda, data_upload) VALUES ('Página web', 'www.gnews.com', 'Parque sustentável', '2027-01-01 03:00:34' );
