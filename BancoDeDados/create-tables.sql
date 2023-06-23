/**
    MYSQL: "INTEGER AUTO_INCREMENT PRIMARY KEY"
    POSTGRES "id serial primary key"
*/

CREATE TABLE aluno(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    matricula VARCHAR(20) UNIQUE,
    data_nascimento date,
    pontuação INTEGER
);

CREATE TABLE atividade(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    aluno_id integer,
    FOREIGN KEY(aluno_id) REFERENCES aluno(id),
    nome VARCHAR(100),
    disciplina VARCHAR(100),
    nota DECIMAL(10,2),
    obs VARCHAR(255)
);

INSERT INTO aluno VALUES
(default, 'João Silva', '20231111', '2005-01-10', 0),
(default, 'Maria Santos', '20232222', '2005-03-15', 0),
(default, 'Pedro Almeida', '20233333', '2005-07-20', 0),
(default, 'Ana Souza', '20234444', '2005-06-05', 0);
