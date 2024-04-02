create database if not exists db_faculdade;
use db_faculdade;

create table curso (
	id_curso int PRIMARY KEY auto_increment,
    nome_curso varchar(60) not null,
    codigo_curso varchar(6) not null
);

insert into curso (nome_curso, codigo_curso)
values
	('Administração', 'AD5010'), 
	('Engenharia Civil', 'EC0120'), 
	('Engenharia de Computação', 'ET0230'), 
	('Engenharia Mecânica', 'EM2012'), 
	('Sistemas de Informação', 'SI1205');
show tables;

create table aluno (
	id_aluno int PRIMARY KEY auto_increment,
    nome varchar(60) not null,
    ra int not null,
    idade int not null,
    cursoID int not null,
    FOREIGN KEY (cursoID) REFERENCES curso(id_curso)
);

insert into aluno (nome, ra, idade, cursoID)
values
	('Daniela Hayashi', '22005265', '22', 3), 
	('Carlos Teixeira', '22004932', '24', 1), 
	('Beatriz Newman', '22001652', '19', 3),
	('Matheus Silveira', '22003456', '22', 2), 
	('Flavia Medeiros', '22009596', '20', 3), 
	('Paola Pereira', '22007712', '20', 4), 
	('Giovana Alarcon', '22003652', '19', 3),
	('Luis Miguel', '22008967', '25', 5), 
	('Luana Baptista', '22006728', '20', 3),
	('Marcos Silva', '22003768', '22', 2);
show tables;

create table materia (
	id_materia int PRIMARY KEY auto_increment,
    codigo_materia varchar(7) not null,
    nome_materia varchar (70) not null,
    cursoID int not null,
    FOREIGN KEY (cursoID) REFERENCES curso(id_curso)
);

insert into materia(codigo_materia, nome_materia, cursoID) 
values 
	('P0120', 'Calculo_1', 2),
    ('P0121', 'Desenho_Grafico', 2),
    ('P0122', 'Fisica', 4),
    ('P0123', 'Mecanica dos Solidos', 4),
    ('P0124', 'Python', 3),
    ('P0125', 'Javascript', 3),
    ('P0126', 'Economia', 1),
    ('P0127', 'Empreendedorismo', 1),
    ('P0128', 'Marketing', 1),
    ('P0129', 'Aplicativos', 5);
show tables;

    
create table professor (
	id_professor int PRIMARY KEY auto_increment,
	nome_professor varchar(50) not null,
	RP varchar(50) not null,
	tempo_casa int not null,
    cursoID int not null,
    FOREIGN KEY (cursoID) REFERENCES curso(id_curso)
);
 
 insert into professor(nome_professor, RP, tempo_casa, cursoID)
 values
	 ('Xastre', 'LX123','12',1),
	 ('Lucia', 'LG234','20',2),
	 ('Takeo','TA134','8', 3),
	 ('Julio','JP456','10', 4),
	 ('Cristiane','CB897','15', 5),
	 ('Juliana','JB356','30', 1),
	 ('Luciano','LT573','11', 3);
show tables;

create table alunos_materias(
    alunoID int references aluno(id_aluno),
    materiaID int references materia(id_materia),
    primary key (alunoID, materiaID)
);

insert into alunos_materias 
values
	(1,1), (2,1), (3,1), (4,1), (5,1),
    (1,2),        (3,2),        (5,2),        (7,2), (8,2), (9,2),
    (1,3), (2,3), (3,3), (4,3),        (6,3),        (8,3), (9,3), (10,3),
    (1,4), (2,4),
           (2,5), (3,5), (4,5), (5,5),
                                       (6,6), (7,6), (8,6), (9,6), (10,6),
                                              (7,7),
                                       (6,8),        (8,8), (9,8), (10,8),
    (1,9), (2,9),
    (1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(9,10),(10,10);
show tables;

create table alunos_professores(
    alunoID int references aluno(id_aluno),
    professorID int references professor(id_professor),
    primary key (alunoID, professorID)
);

insert into alunos_professores 
values
	(1,1), (2,1),        (4,1), (5,1), (6,1), (7,1), (8,1), (9,1), (10,1),
    (1,2), (2,2), (3,2), (4,2), (5,2),
    (1,3), (2,3),                      (6,3), (7,3),        (9,3), (10,3),
    (1,4),        (3,4),        (5,4), (6,4),
                                (5,5),                             (10,5),
                                       (6,6), (7,6), (8,6), (9,6), (10,6),
           (2,7), (3,7), (4,7),        (6,7), (7,7), (8,7),        (10,7);
show tables;

create table materias_professores(
    materiaID int references materia(id_materia),
    professorID int references professor(id_professor),
    primary key (materiaID, professorID)
);

insert into materias_professores 
values
	(1,1), (2,1),
    (3,2),
    (4,3),
    (5,4), (6,4),
    (8,5),
    (9,6),
    (10,7);
show tables;


/*
Codigo que encontra os professores de um aluno específico
*/
SELECT professor.nome_professor
FROM aluno
JOIN alunos_professores ON aluno.id_aluno = alunos_professores.alunoID
JOIN professor ON alunos_professores.professorID = professor.id_professor
WHERE aluno.id_aluno = 2;

/*
Codigo que diz quais matérias tem mais de 3 alunos matriculados
*/







/*
Codigo que diz quais são os alunos de uma determinada matéria 
*/
SELECT a.nome
FROM aluno a
JOIN alunos_materias am ON a.id_aluno = am.alunoID
JOIN materia m ON am.materiaID = m.id_materia
WHERE m.nome_materia = "Fisica";

/*
código que conta quantos alunos tem em cada matéria
*/
SELECT m.nome_materia, COUNT(am.alunoID) AS numero_alunos
FROM materia m
INNER JOIN alunos_materias am ON m.id_materia = am.materiaID
GROUP BY m.nome_materia;

/*
código que verifica se existe alguma matéria sem professor atribuído
*/
SELECT materia.nome_materia
FROM materia
WHERE id_materia NOT IN (
    SELECT DISTINCT materiaID
    FROM materias_professores
);

/*
código que lista TODOS os alunos de um determinado professor. É possível evitar repetições de nomes
*/
SELECT aluno.nome
FROM professor
JOIN alunos_professores ON professor.id_professor = alunos_professores.professorID
JOIN aluno ON alunos_professores.alunoID = aluno.id_aluno
WHERE professor.id_professor = 1;

/*
código que conta a quantidade de professor
*/
SELECT COUNT(*) AS total_professores
FROM professor;

/*
código que conta quantos alunos estao matriculados
*/
SELECT COUNT(*) AS total_aluno
FROM aluno;

