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

insert into alunos_materias values(1,1);
insert into alunos_materias values(2,1);
insert into alunos_materias values(3,2);
insert into alunos_materias values(1,3);
insert into alunos_materias values(1,4);
insert into alunos_materias values(3,4);
insert into alunos_materias values(1,5);
insert into alunos_materias values(10,6);
insert into alunos_materias values(5,10);
insert into alunos_materias values(6,10);
insert into alunos_materias values(1,7);
insert into alunos_materias values(2,8);
insert into alunos_materias values(7,8);
insert into alunos_materias values(9,9);
insert into alunos_materias values(8,2);
insert into alunos_materias values(10,3);

create table alunos_professores(
    alunoID int references aluno(id_aluno),
    professorID int references professor(id_professor),
    primary key (alunoID, professorID)
);

insert into alunos_professores values(1,1);
insert into alunos_professores values(2,2);
insert into alunos_professores values(3,2);
insert into alunos_professores values(4,5);
insert into alunos_professores values(5,7);
insert into alunos_professores values(6,3);
insert into alunos_professores values(7,4);
insert into alunos_professores values(8,4);
insert into alunos_professores values(9,1);
insert into alunos_professores values(1,7);
insert into alunos_professores values(3,1);
insert into alunos_professores values(10,5);
insert into alunos_professores values(9,6);

create table materias_professores(
    materiaID int references materia(id_materia),
    professorID int references professor(id_professor),
    primary key (materiaID, professorID)
);

insert into materias_professores values(1,1);
insert into materias_professores values(2,1);
insert into materias_professores values(3,7);
insert into materias_professores values(3,5);
insert into materias_professores values(4,2);
insert into materias_professores values(5,2);
insert into materias_professores values(6,3);
insert into materias_professores values(7,6);
insert into materias_professores values(8,5);
insert into materias_professores values(9,4);
insert into materias_professores values(10,7);
insert into materias_professores values(10,2);




