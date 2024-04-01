create database bd_apresentacao5;

use bd_apresentacao5;

create table materia (
	id_materia varchar(7) not null,
    nome_materia varchar (70) not null,
    nome_professor varchar (70) not null,
    curso_materia varchar (70) not null
);

create table professor(
id_professor int PRIMARY KEY auto_increment,
nome_professor varchar(50) not null,
RP varchar(50) not null,
tempo_casa int not null
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
    
 insert into professor(nome_professor, RP, tempo_casa)
 values
 ('Xastre', 'LX123','12'),
 ('Lucia', 'LG234','20'),
 ('Takeo','TA134','8'),
 ('Julio','JP456','10'),
 ('Cristiane','CB897','15'),
 ('Juliana','JB356','30'),
 ('Luciano','LT573','11');
 
    
    show tables;
    
    
    
    


