create database banco_dados;

use banco_dados;

create table materia (
	id_materia varchar(7) not null,
    nome_materia varchar (70) not null,
    nome_professor varchar (70) not null,
    curso_materia varchar (70) not null
);

insert into materia(id_materia, nome_materia, nome_professor, curso_materia) 
values 
	('P0120', 'Calculo_1', 'Miro', 'Engenharia Civil'),
    ('P0121', 'Desenho_Grafico', 'Caio', 'Engenharia Civil'),
    ('P0122', 'Fisica', 'Shima', 'Engenharia Mecânica'),
    ('P0123', 'Mecanica dos Solidos', 'Fabio', 'Engenharia Mecânica'),
    ('P0124','Python', 'Vinicius', 'Engenharia de Computação'),
    ('P0125', 'Javascript', 'Xastre', 'Engenharia de Computação'),
    ('P0126', 'Economia', 'Leandro', 'Admininstração'),
    ('P0127', 'Empreendedorismo', 'Luciana', 'Admininstração'),
    ('P0128', 'Marketing', 'Lucio', 'Admininstração'),
    ('P0129', 'Aplicativos', 'Takeo', 'Engenharia de Computação');
    
    show tables;

