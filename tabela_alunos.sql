create database db_apresentacao5;
use db_apresentacao5;

create table alunos (
	id int unsigned not null auto_increment,
    nome varchar(60) not null,
    ra int not null,
    idade int not null
);

insert into alunos (nome, ra, idade)
values
		('Daniela Hayashi', '22005265', '22'), 
        ('Beatriz Newman', '22001652', '19'), 
        ('Flavia Medeiros', '22009596', '20'), 
        ('Giovana Alarcon', '22003652', '19'), 
        ('Luana Baptista', '22006728', '20');

show tables;