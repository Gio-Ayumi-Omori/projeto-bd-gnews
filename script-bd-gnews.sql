CREATE TABLE noticia(
  
  id_noticia SERIAL PRIMARY KEY,
  titulo varchar(255),
  subtitulo varchar(255),
  conteudo_texto varchar(255),
  status varchar(255),
  data_publicacao timestamp,
  data_criacao timestamp,
  fk_jornalista int,
  fk_categoria int,
  CONSTRAINT fk_jornalista FOREIGN KEY (fk_jornalista) REFERENCES jornalista (id_jornalista),
  CONSTRAINT fk_categoria FOREIGN KEY (fk_categoria) REFERENCES categoria (id_categoria) 

);

INSERT INTO noticia (titulo, subtitulo, conteudo_texto, status) VALUES ('');

SELECT * FROM noticia;

CREATE TABLE curtida_noticia(

  id_curtida SERIAL PRIMARY KEY,
  fk_noticia int,
  fk_usuario int,
  data_reacao timestamp,
  CONSTRAINT fk_usuario FOREIGN KEY (fk_usuario) REFERENCES usuario (id_usuario),
  CONSTRAINT fk_noticia FOREIGN KEY (fk_noticia) REFERENCES noticia (id_noticia)


);

CREATE TABLE jornalista(

  id_jornalista SERIAL PRIMARY KEY,
  fk_usuario int,
  registro_profissional varchar(50),
  biografia character varying(255),
  especialidade varchar(100),
  CONSTRAINT fk_usuario FOREIGN KEY (fk_usuario) REFERENCES usuario (id_usuario)

);

CREATE TABLE historico_revisao (

  id_historico SERIAL PRIMARY KEY,
  fk_noticia int,
  id_editor int,
  observacao_revisao varchar (255),
  status_aplicado varchar (255),
  data_alteracao timestamp,
  CONSTRAINT fk_noticia FOREIGN KEY (fk_noticia) REFERENCES noticia (id_noticia)
  
);

SELECT * FROM historico_revisao;

INSERT INTO  historico_revisao(observacao_revisao, status_aplicado, data_alteracao) VALUES ('Observação concluida com sucesso e sem erros', 'Ok', '2026-12-30 14:30:00' );

CREATE TABLE midia_noticia (
  
  id_midia SERIAL PRIMARY KEY,
  fk_noticia int,
  tipo_midia varchar(255),
  url_arquivo varchar(500),
  legenda varchar(255),
  data_upload timestamp,
  CONSTRAINT fk_noticia FOREIGN KEY (fk_noticia) REFERENCES noticia (id_noticia)

);         

SELECT * FROM midia_noticia;

INSERT INTO  midia_noticia(tipo_midia, url_arquivo, legenda, data_upload) VALUES ('Página web', 'www.gnews.com', 'Parque sustentável', '2027-01-01 03:00:34' );

CREATE TABLE usuario(

  id_usuario SERIAL PRIMARY KEY,
  fk_jornalista int,
  nome varchar(255),
  email varchar(255),
  senha_hash varchar(255),
  data_nascimento date,
  tipo_perfil varchar(255),
  data_cadastro timestamp

);

INSERT INTO  usuario(nome, email, senha, data_nascimento, tipo_perfil, data_cadastro) VALUES ('Rogerio', 'Rogerio@gmail.com', '6735289', '1960-01-17', '2021-03-12 01:00:56' );

SELECT * FROM usuario;

CREATE TABLE comentario(

  id_comentario SERIAL PRIMARY KEY,
  fk_noticia int,
  fk_usuario int,
  texto_comentario varchar(255),
  data_publicacao timestamp,
  ativo boolean,
  CONSTRAINT fk_usuario FOREIGN KEY (fk_usuario) REFERENCES usuario (id_usuario),
  CONSTRAINT fk_noticia FOREIGN KEY (fk_noticia) REFERENCES noticia (id_noticia)

);

CREATE TABLE categoria(

  id_categoria SERIAL PRIMARY KEY,
  nome_categoria varchar(100),
  descricao varchar(255),
  slug varchar(100)

);

CREATE TABLE noticia_tag(

  id_noticia SERIAL PRIMARY KEY,
  id_tag SERIAL

);

CREATE TABLE tag(

  id_tag SERIAL PRIMARY KEY,
  nome_tag varchar(50) 

);

