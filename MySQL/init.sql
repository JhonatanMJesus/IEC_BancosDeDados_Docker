-- Tudo que estiver na pasta /docker-entrypoint-initdb.d/ dentro do container
-- é executado automaticamente na primeira inicialização (quando o volume de dados ainda está vazio).

-- Cria a tabela usuarios
CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL
);

INSERT INTO usuarios (nome, email)
VALUES ('Jhonatan', 'jhonatanjau98@gmail.com');