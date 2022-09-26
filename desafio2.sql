DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.usuario(
      usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      usuario_nome VARCHAR(100) NOT NULL,
      idade INT,
      plano_id INT INTEGER,
      data_assinatura DATE NOT NULL,
      FOREIGN KEY (plano_id) REFERENCES plano (plano_id),
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.plano(
      plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      plano_tipo VARCHAR(25) NOT NULL,
      valor DECIMAL(P,D) NOT NULL,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.historico_de_reproducoes(
      usuario_id INT NOT NULL,
      cancoes_id INT NOT NULL,
      data_reproducao DATETIME NOT NULL,
      FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
      FOREIGN KEY (cancoes_id) REFERENCES cancoes (cancoes_id),
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.seguindo_artistas(
      usuario_id INT ,
      artista_id INT ,
      FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
      FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artistas(
      artista_id INT NOT NULL,
      artista VARCHAR(100) NOT NULL,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.album(
      album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      nome_album  VARCHAR(100) NOT NULL,
      artista_id INT NOT NULL,
      ano_lancamento  YEAR NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.cancoes(
      cancoes_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      cancoes  VARCHAR(100) NOT NULL,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.detalhe album(
      album_id  INT NOT NULL,
      cancoes_id  INT NOT NULL,
      duracao_segundos  INT NOT NULL,
      FOREIGN KEY (album_id) REFERENCES album (album_id),
  ) engine = InnoDB;


  INSERT INTO SpotifyClone.usuario ( usuario_nome,idade, plano_id, data_assinatura)
  VALUES
    ('Barbara Liskov',82, 1, '2019-10-20'),
    (' Robert Cecil Martin', 58, 1, '2017-01-06'),
    ('Ada Lovelace',37, 2, '2017-12-30'),
    ('Martin Fowler', 46, 2,' 2017-01-17'),
    ('Sandi Metz', 58, 2,  '2018-04-29'),
    ('Paulo Freire', 19, 4, '2018-02-14'),
    ('Bell Hooks', 26, 4, '2018-01-05'),
    ('Christopher Alexander', 85, 5, '2019-06-05'),
    ('Judith Butler', 45, 5, '2020-05-13'),
    ('Jorge Amado',58, 5, '2017-02-17');
    

  INSERT INTO SpotifyClone.plano (plano_tipo, valor)
  VALUES
  ('gratuito,' 0.00),
  ('familiar', 7.99),
  ('universitario', 5.99),
  ('pessoal', 6.99);

     INSERT INTO SpotifyClone.historico_de_reproducoes(id_usuario, cançoes_id, data_reproducao)
  VALUES
    (1, 1, "2022-02-28 10:45:55"),
    (1, 2,  "2020-05-02 05:30:35"),
    (1,3, "2020-03-06 11:22:33"),
    (2, 3, "2022-08-05 08:05:17"),
    (2, 4, "2020-01-02 07:40:33"),
    (3, 3, "2020-11-13 16:55:13"),
    (3,2, "2020-12-05 18:38:30"),
    (4, 1, "2021-08-15 17:10:10"),
    (5, 1, "2022-01-09 01:44:33"),
    (5, 5, "2020-08-06 15:23:43"),
    (6, 4, "2017-01-24 00:31:17"),
    (6, 6, "2017-10-12 12:35:20"),
    (7, 7, "2011-12-15 22:30:49"),
    (8, 7, "2012-03-17 14:56:41"),
    (9, 8, "2022-02-24 21:14:22"),
    (10, 9, "2015-12-13 08:30:22");
  
  
  
    INSERT INTO SpotifyClone.seguindo_artistas (id_usuario, artista_id)
  VALUES
    (1,1),
    (1,2),
    (1,3),
    (2,1),
    (2,3),
    (3,2),
    (4,4),
    (5,5),
    (5,6),
    (6,6),
    (6,1),
    (7,6),
    (8),
    (9,3),
    (10,2);


    INSERT INTO SpotifyClone.artistas(artista)
  VALUES
    (1,'Beyoncé'),
    (2, 'Queen'),
    (3, 'Elis Regina'),
    (4, 'Baco Exu do Blues'),
    (5,' Blind Guardian'),
    (6, 'Nina Simone');


  INSERT INTO SpotifyClone.album (nome_album, artista_id, ano_lancamento)
  VALUES
    ('Renaissance', 1, '2022'),
    ('Jazz', 2, '1978'),
    ('Hot Space', 2, '1982'),
    ('Falso Brilhante', 3,'1998'),
    ('Vento de Maio', 3, '2001'),
    ('QVVJFA?', 4, '2003'),
    ('Somewhere Far Beyond', 5, '2007'),
    ('I Put A Spell On You', 6, '2012');


     INSERT INTO SpotifyClone.cancoes (cancoes)
  VALUES
 ( "Samba em Paris"),
( "VIRGO’S GROOVE"),
("Feeling Good"),
("O Medo de Amar é o Medo de Ser Livre"),
("Under Pressure"),
("BREAK MY SOUL"),
("Don’t Stop Me Now"),
("The Bard’s Song"),
("ALIEN SUPERSTAR"),
("Como Nossos Pais");


     INSERT INTO SpotifyClone.detalhe_album (album_id, duracao_segundos)
  VALUES
(1,	6, 279),
(1,	2, 369),
(1,	9, 116),
(2,	7, 203),
(3, 5, 152),
(4,	10,	105),
(5,	4, 207),
(6,	1, 267),
(7,	8, 244),
(8,	3, 100);


  