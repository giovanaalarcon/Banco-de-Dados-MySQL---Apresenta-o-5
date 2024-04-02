/*
código que conta quantos alunos tem em cada matéria
*/
SELECT m.nome_materia, COUNT(am.alunoID) AS numero_alunos
FROM materia m
INNER JOIN alunos_materias am ON m.id_materia = am.materiaID
GROUP BY m.nome_materia;

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
