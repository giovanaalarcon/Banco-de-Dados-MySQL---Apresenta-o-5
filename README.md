# Banco de Dados MySQL - Apresentação 5
Trabalho proposto na matéria de Banco de Dados

# Proposta do trabalho: 

Crie suas tabelas, usando apenas comandos SQL, para:
- Aluno de uma Universidade;
- Matéria de um Curso;
- Professor de uma Universidade;
- Curso de uma Universidade;
  
Insira alguns dados nas tabelas, através de comandos SQL.

Demonstre e explique os comandos usados para:
- Criar as tabelas.
- Fazer os relacionamentos entre os dados.
- Inserir dados fictícios nas tabelas.
  
Responder as seguintes perguntas:
- Encontre os professores de um aluno específico.
- Quais matérias tem mais de 3 alunos matriculados?
- Quais são os alunos de uma determinada matéria?
- Quantos alunos tem em cada matéria?
- Existe alguma matéria sem professor atribuído?
- Liste TODOS os alunos de um determinado professor. É possível evitar repetições de nomes?
- Qual é o número total de professores?
- Quantos alunos matriculados?

Para subir imagem (usando GIT BASH):

```sh
docker pull giovanaallarcon/mysql
```

```sh
docker run -e MYSQL_ROOT_PASSWORD=root --name my2 -p 3306:3306 -d giovanaallarcon/mysql
```

https://hub.docker.com/r/giovanaallarcon/mysql


### Pessoas Desenvolvedoras: 
- Beatriz Cupa Newman
- Daniela Akemi Hayashi
- Flávia Cristina Medeiros
- Giovana Salazar Alarcon
- Luana Bresciani Baptista

