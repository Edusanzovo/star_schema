create database escola;

use escola;

create table departamento(
departamentoid int auto_increment primary key,
departamento_nome varchar(20),
campus varchar(10)
);

create table disciplina(
disciplinaid int auto_increment primary key,
disciplina_nome varchar(20),
vagas tinyint
);

create table curso(
cursoid int auto_increment primary key,
curso_nome varchar(20),
nota_corte_enem int
);

create table tempo(
tempoid int auto_increment primary key,
data date
);

create table professor (
professorid int auto_increment primary key,
professor_nome varchar(50),
professor_cpf varchar(11),
departamentoid int,
cursoid int,
disciplinaid int,
carga_horaria int,
salario decimal(10,2),
qtd_alunos int,
avaliacao_media decimal(3,2),
data_inicio_id INT,
foreign key (departamentoid) references departamento(departamentoid),
foreign key (cursoid) references curso(cursoid),
foreign key (disciplinaid) references disciplina(disciplinaid),
foreign key (data_inicio_id) references tempo(tempoid)
);

insert into departamento (departamento_nome, campus) values
('Ciencias Exatas', 'Sede'),
('Ciencias Humanas', 'Sede'),
('Saude', 'Leste'),
('Engenharia', 'Sede'),
('Tecnologia', 'Norte');

alter table curso
modify curso_nome varchar(50)
;

insert into curso (curso_nome, nota_corte_enem) values
('Ciencia da Computacao', 780),
('Engenharia Civil', 750),
('Psicologia', 720),
('Enfermagem', 710),
('Administracao', 690),
('Sistemas de Informacao', 730);

insert into disciplina (disciplina_nome, vagas) values
('Banco de Dados', 40),
('Estruturas de Dados', 35),
('Calculo I', 60),
('Psicologia Social', 50),
('Anatomia Humana', 45),
('Gestao de Projetos', 40),
('Algoritmos', 35),
('Estatistica', 55);

insert into tempo (data) values
('2024-01-15'),
('2024-02-01'),
('2024-03-01'),
('2024-04-01'),
('2024-05-01'),
('2024-06-01');

insert into professor 
(professor_nome, professor_cpf, departamentoid, cursoid, disciplinaid, 
carga_horaria, salario, qtd_alunos, avaliacao_media, data_inicio_id)
values
('Carlos Silva', '12345678901', 1, 1, 1, 40, 8500.00, 38, 4.5, 2),
('Mariana Souza', '12345678902', 1, 6, 7, 30, 7200.00, 32, 4.7, 3),
('Ricardo Lima', '12345678903', 4, 2, 3, 60, 9000.00, 55, 4.2, 2),
('Patricia Gomes', '12345678905', 3, 4, 5, 50, 8200.00, 42, 4.6, 2),
('Joao Martins', '12345678906', 2, 5, 6, 30, 7000.00, 37, 4.3, 4),
('Eduardo Rocha', '12345678907', 1, 1, 8, 40, 8800.00, 50, 4.4, 3);