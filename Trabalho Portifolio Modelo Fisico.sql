create database db_Unifecaf;

use db_Unifecaf;

create table tbl_alunos(
id int primary key auto_increment not null,
nome varchar(45) not null,
cpf varchar(13) not null,
data_nascimento date not null
);

create table tbl_endereco(
id int primary key auto_increment not null,
logradouro varchar(30) not null,
bairro varchar(20) not null,
cep varchar(10) not null,
estado varchar(20) not null,
cidade varchar(30) not null,
pais varchar (40) not null,
id_alunos int,

constraint FK_alunos_endereco
foreign key (id_alunos)
references tbl_alunos (id)
);

create table tbl_professores (
id int primary key auto_increment not null,
nome varchar(45) not null,
cpf varchar(13) not null,
area_atuacao varchar(30) not null,
titulacao varchar(45) not null
);

create table tbl_cursos (
id int primary key auto_increment not null,
nome_curso varchar(50) not null,
modalidade varchar (20) not null,
duracao varchar(15) not null
);

create table tbl_disciplinas(
id int primary key auto_increment not null,
disciplina varchar(45) not null,
carga_horaria varchar(45) not null,
id_cursos int,

constraint PK_cursos_disciplinas
foreign key (id_cursos)
references tbl_cursos (id)
);

create table tbl_turmas (
id int primary key auto_increment not null,
semestre varchar(45) not null,
ano int not null,
id_disciplinas int,
id_professores int,

constraint PK_disciplinas_turmas
foreign key (id_disciplinas)
references tbl_disciplinas (id),

constraint PK_professores_turmas
foreign key (id_professores)
references tbl_professores (id)
);

create table tbl_matricula (
id int primary key auto_increment not null,
matricula int not null,
data_matricula date not null,
id_alunos int,
id_turmas int,

constraint PK_alunos_matricula
foreign key (id_alunos)
references tbl_alunos (id),

constraint PK_turmas_matricula
foreign key (id_turmas)
references tbl_turmas (id)
);

CREATE TABLE tbl_nota (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nota1 DECIMAL(5,2),
    nota2 DECIMAL(5,2),
    nota3 DECIMAL(5,2) NOT NULL,
    nota4 DECIMAL(5,2) NOT NULL,
    nota_final DECIMAL(5,2) GENERATED ALWAYS AS (
        ROUND((nota1 + nota2 + nota3 + nota4) / 4, 2)
    ) STORED,
    id_matricula INT,

constraint PK_matricula_notas
foreign key (id_matricula)
references tbl_matricula (id)
);

create table tbl_email (
id int primary key auto_increment not null,
email varchar(255) not null,
id_alunos int,
id_professores int,

constraint PK_alunos_email
foreign key (id_alunos)
references tbl_alunos (id),

constraint PK_professores_email
foreign key (id_professores)
references tbl_professores (id)
);

create table tbl_telefone (
id int primary key auto_increment not null,
numero_residencial varchar(13) not null,
telefone_celular varchar(13) not null,
id_alunos int,
id_professores int,

constraint PK_alunos_telefone
foreign key (id_alunos)
references tbl_alunos (id),

constraint PK_professores_telefone
foreign key (id_professores)
references tbl_professores (id)
);

insert into tbl_alunos (	id,
							nome,
                            cpf,
                            data_nascimento
						)values(
							1,
                            'Vanessa Camargo dos Santos',
                            '39512874632',
                            '2001-05-26'
);

insert into tbl_alunos (	id,
							nome,
                            cpf,
                            data_nascimento
						)values(
							2,
                            'Luciano Hulk de Souza',
                            '13452896341',
                            '2006-07-10'
);

insert into tbl_alunos (	id,
							nome,
                            cpf,
                            data_nascimento
						)values(
							3,
                            'Fernanda de Souza Araujo',
                            '32596875314',
                            '1987-03-04'
);

insert into tbl_alunos (	id,
							nome,
                            cpf,
                            data_nascimento
						)values(
							4,
                            'Lazaro Ramos de Oliveira',
                            '54127896345',
                            '2004-03-12'
);

insert into tbl_alunos (	id,
							nome,
                            cpf,
                            data_nascimento
						)values(
							5,
                            'Michael Jackson da Costa',
                            '48965783210',
                            '2000-10-01'
);

insert into tbl_alunos (	id,
							nome,
                            cpf,
                            data_nascimento
						)values(
							6,
                            'Roberto Carlos Alves',
                            '18108974130',
                            '1999-09-09'
);

insert into tbl_alunos (	id,
							nome,
                            cpf,
                            data_nascimento
						)values(
							7,
                            'Dercy Gonçalves',
                            '08910548650',
                            '2003-06-14'
);

insert into tbl_alunos (	id,
							nome,
                            cpf,
                            data_nascimento
						)values(
							8,
                            'Debora Seco da Silva',
                            '15320547863',
                            '1995-11-05'
);

insert into tbl_alunos (	id,
							nome,
                            cpf,
                            data_nascimento
						)values(
							9,
                            'Fernado Henrique Cardoso',
                            '19985214409',
                            '1990-08-10'
);


insert into tbl_alunos (	id,
							nome,
                            cpf,
                            data_nascimento
						)values(
							10,
                            'Francisco de Assis Barbosa',
                            '02145879632',
                            '1997-06-02'
);

insert into tbl_endereco	(
							id,
                            logradouro,
                            bairro,
                            cep,
                            estado,
                            cidade,
                            pais,
                            id_alunos
                            )values(
                            1,
                            'Rua Angelina Soares 49',
                            'Limoeiro',
                            '08265140',
                            'São Paulo',
                            'São Paulo',
                            'Brasil',
                            1
);

insert into tbl_endereco	(
							id,
                            logradouro,
                            bairro,
                            cep,
                            estado,
                            cidade,
                            pais,
                            id_alunos
                            )values(
                            2,
                            'Rua Faisca a Solta 51',
                            'Jardim Piratininga',
                            '06099845',
                            'São Paulo',
                            'Osasco',
                            'Brasil',
                            2
);

insert into tbl_endereco	(
							id,
                            logradouro,
                            bairro,
                            cep,
                            estado,
                            cidade,
                            pais,
                            id_alunos
                            )values(
                            3,
                            'Rua Angelina Soares 49',
                            'Bom Retiro',
                            '06987423',
                            'São Paulo',
                            'Campinas',
                            'Brasil',
                            3
);

insert into tbl_endereco	(
							id,
                            logradouro,
                            bairro,
                            cep,
                            estado,
                            cidade,
                            pais,
                            id_alunos
                            )values(
                            4,
                            'Avenida Castro Alves 10',
                            'Liberdade',
                            '03120151',
                            'São Paulo',
                            'São Paulo',
                            'Brasil',
                            4
);

insert into tbl_endereco	(
							id,
                            logradouro,
                            bairro,
                            cep,
                            estado,
                            cidade,
                            pais,
                            id_alunos
                            )values(
                            5,
                            'Rua Ituano 105',
                            'Moema',
                            '04578902',
                            'São Paulo',
                            'São Paulo',
                            'Brasil',
                            5
);

insert into tbl_endereco	(
							id,
                            logradouro,
                            bairro,
                            cep,
                            estado,
                            cidade,
                            pais,
                            id_alunos
                            )values(
                            6,
                            'Rua dos Vidraceiros 88',
                            'Vila Santa Luzia',
                            '06987423',
                            'São Paulo',
                            'Taboão da Serra',
                            'Brasil',
                            6
);

insert into tbl_endereco	(
							id,
                            logradouro,
                            bairro,
                            cep,
                            estado,
                            cidade,
                            pais,
                            id_alunos
                            )values(
                            7,
                            'Rua Rejente Feijo 41',
                            'Vila Matilde',
                            '12584763',
                            'São Paulo',
                            'São Paulo',
                            'Brasil',
                            7
);


insert into tbl_endereco	(
							id,
                            logradouro,
                            bairro,
                            cep,
                            estado,
                            cidade,
                            pais,
                            id_alunos
                            )values(
                            8,
                            'Rua Raiz do Sol 25',
                            'Itaquera',
                            '13055421',
                            'São Paulo',
                            'São Paulo',
                            'Brasil',
                            8
);

insert into tbl_endereco	(
							id,
                            logradouro,
                            bairro,
                            cep,
                            estado,
                            cidade,
                            pais,
                            id_alunos
                            )values(
                            9,
                            'Travessa Falção Veloso 93',
                            'Jardim Helena',
                            '13055421',
                            'São Paulo',
                            'Taboão da Serra',
                            'Brasil',
                            9
);

insert into tbl_endereco	(
							id,
                            logradouro,
                            bairro,
                            cep,
                            estado,
                            cidade,
                            pais,
                            id_alunos
                            )values(
                            10,
                            'Avenida Brasil 612',
                            'Dom Bosco',
                            '13055421',
                            'São Paulo',
                            'Santos',
                            'Brasil',
                            10
);



insert into tbl_professores (
							id,
                            nome,
                            cpf,
                            area_atuacao,
                            titulacao
                            )values(
                            1,
                            'Larissa Manoela de Araujo',
                            '32157496350',
                            'Artes Visuais',
                            'Mestrado'
);

insert into tbl_professores (
							id,
                            nome,
                            cpf,
                            area_atuacao,
                            titulacao
                            )values(
                            2,
                            'Marcelo Bortinoli Pierrot',
                            '36845012874',
                            'Enfermagem',
                            'Doutorado'
);

insert into tbl_professores (
							id,
                            nome,
                            cpf,
                            area_atuacao,
                            titulacao
                            )values(
                            3,
                            'Ingrid Guimarães Ferreira',
                            '50091476352',
                            'Ciencias da Computação',
                            'Livre-docência'
);

insert into tbl_professores (
							id,
                            nome,
                            cpf,
                            area_atuacao,
                            titulacao
                            )values(
                            4,
                            'David Gonzaga de Oliveira',
                            '20853146823',
                            'Marketing',
                            'Mestrado'
);

insert into tbl_professores (
							id,
                            nome,
                            cpf,
                            area_atuacao,
                            titulacao
                            )values(
                            5,
                            'Fernando Ludwig Gomes',
                            '20145789654',
                            'Administração',
                            'Graduação'
);

insert into tbl_professores (
							id,
                            nome,
                            cpf,
                            area_atuacao,
                            titulacao
                            )values(
                            6,
                            'Lucas dos Santos Figaro',
                            '41789645302',
                            'Educação Física',
                            'Graduação'
);

insert into tbl_professores (
							id,
                            nome,
                            cpf,
                            area_atuacao,
                            titulacao
                            )values(
                            7,
                            'Rafael Silva Fontes',
                            '21478569312',
                            'Pedagogia',
                            'Mestrado'
);

insert into tbl_professores (
							id,
                            nome,
                            cpf,
                            area_atuacao,
                            titulacao
                            )values(
                            8,
                            'Fabio Assunção de Camilo',
                            '45783214756',
                            'Medicina',
                            'Doutorado'
);

insert into tbl_professores (
							id,
                            nome,
                            cpf,
                            area_atuacao,
                            titulacao
                            )values(
                            9,
                            'João de Cabral Lopes',
                            '15026852010',
                            'Engenharia Eletrica',
                            'Graduação'
);

insert into tbl_professores (
							id,
                            nome,
                            cpf,
                            area_atuacao,
                            titulacao
                            )values(
                            10,
                            'Camila de Souza Santos',
                            '13315874215',
                            'Engenharia de Alimentos',
                            'Graduação'
);

insert into tbl_cursos (
						id,
                        nome_curso,
                        modalidade,
                        duracao
                        )values(
                        1,
						'Administação',
                        'Presencial',
                        '4 anos'
);

insert into tbl_cursos (
						id,
                        nome_curso,
                        modalidade,
                        duracao
                        )values(
                        2,
						'Nutrição',
                        'Presencial',
                        '4 anos'
);

insert into tbl_cursos (
						id,
                        nome_curso,
                        modalidade,
                        duracao
                        )values(
                        3,
						'Medicina',
                        'Presencial',
                        '6 anos'
);

insert into tbl_cursos (
						id,
                        nome_curso,
                        modalidade,
                        duracao
                        )values(
                        4,
						'Pedagogia',
                        'Presencial',
                        '4 anos'
);

insert into tbl_cursos (
						id,
                        nome_curso,
                        modalidade,
                        duracao
                        )values(
                        5,
						'Turismo',
                        'Semi-presencial',
                        '3 anos'
);

insert into tbl_cursos (
						id,
                        nome_curso,
                        modalidade,
                        duracao
                        )values(
                        6,
						'Odontologia',
                        'Presencial',
                        '5 anos'
);

insert into tbl_cursos (
						id,
                        nome_curso,
                        modalidade,
                        duracao
                        )values(
                        7,
						'Engenharia da Computação',
                        'EAD',
                        '4 anos'
);

insert into tbl_cursos (
						id,
                        nome_curso,
                        modalidade,
                        duracao
                        )values(
                        8,
						'Gastronomia',
                        'Presencial',
                        '2 anos'
);

insert into tbl_cursos (
						id,
                        nome_curso,
                        modalidade,
                        duracao
                        )values(
                        9,
						'Jornalismo',
                        'Semi-presencial',
                        '4 anos'
);

insert into tbl_cursos (
						id,
                        nome_curso,
                        modalidade,
                        duracao
                        )values(
                        10,
						'Engenharia Eletrica',
                        'Presencial',
                        '5 anos'
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							1,
							'Contabilidade Geral',
							'60 horas',
							1
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							2,
							'Economia Aplicada a Administração',
							'60 horas',
							1
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							3,
							'Matemática Aplicada',
							'120 horas',
							1
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							4,
							'Sociologia',
							'60 horas',
							1
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							5,
							'Metodologia Científica',
							'60 horas',
							1
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							6,
							'Administração: Introdução e Teoria',
							'120 horas',
							1
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							7,
							'Anatomia Humana',
							'40 horas',
							2
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							8,
							'Bioquimica',
							'40 horas',
							2
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							9,
							'Biologia',
							'40 horas',
							2
);


insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							10,
							'Fundamentos da Nutrição',
							'80 horas',
							2
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							11,
							'Parasitologia',
							'40 horas',
							2
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							12,
							'Matemática',
							'40 horas',
							2
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							13,
							'Comunicação Oral e Escrita',
							'40 horas',
							2
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							14,
							'Educação Nutricional',
							'80 horas',
							2
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							15,
							'Introdução a Medicina',
							'40 horas',
							3
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							16,
							'Concepção e Formação do Ser Humano',
							'60 horas',
							3
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							17,
							'Metabolismo',
							'60 horas',
							3
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							18,
							'Funções Biológicas',
							'50 horas',
							3
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							19,
							'Mecanismo de Agressão e Defesa',
							'60 horas',
							3
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							20,
							'Comunicação e Expressão',
							'60 horas',
							4
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							21,
							'Filosofia e Educação',
							'60 horas',
							4
);
insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							22,
							'Empregabilidade e Profissionalismo',
							'60 horas',
							4
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							23,
							'História da Educação',
							'60 horas',
							4
);


insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							24,
							'Teoria Geral do Turismo',
							'120 horas',
							5
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							25,
							'Teoria Geral de Eventos',
							'120 horas',
							5
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							26,
							'Turismo e Geografia',
							'60 horas',
							5
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							27,
							'Hospitalidade e Hospedagem',
							'60 horas',
							5
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							28,
							'Morfologia Humana',
							'60 horas',
							6
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							29,
							'Processos Biologicos',
							'60 horas',
							6
);


insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							30,
							'Fundamentos Cientificos',
							'100 horas',
							6
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							31,
							'Programação de Computadores',
							'50 horas',
							7
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							32,
							'Estatistica e Probabilidade',
							'60 horas',
							7
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							33,
							'Comunicação e Expressão',
							'60 horas',
							7
);

insert into tbl_disciplinas (
							id,
							disciplina,
							carga_horaria,
							id_cursos
							)values(
							34,
							'Banco de Dados',
							'120 horas',
							7
);

insert into tbl_turmas (
							id,
							semestre,
							ano,
							id_disciplinas,
                            id_professores
							)values(
							1,
							'8 semestres',
                            4,
							1,
							1
);

insert into tbl_turmas (
							id,
							semestre,
							ano,
							id_disciplinas,
                            id_professores
							)values(
							2,
							'12 semestres',
                            6,
							3,
							8
);


insert into tbl_turmas (
							id,
							semestre,
							ano,
							id_disciplinas,
                            id_professores
							)values(
							3,
							'8 semestres',
                            4,
							4,
							7
);

insert into tbl_turmas (
							id,
							semestre,
							ano,
							id_disciplinas,
                            id_professores
							)values(
							4,
							'8 semestres',
                            4,
							7,
							3
);

insert into tbl_matricula	(	id,
							matricula,
                            data_matricula,
                            id_alunos,
                            id_turmas
						)values(
							1,
                            1,
                            '2025-02-01',
                            1,
                            1
);

insert into tbl_matricula	(	id,
							matricula,
                            data_matricula,
                            id_alunos,
                            id_turmas
						)values(
							2,
                            2,
                            '2025-02-01',
                            2,
                            1
);

insert into tbl_matricula	(	id,
							matricula,
                            data_matricula,
                            id_alunos,
                            id_turmas
						)values(
							3,
                            3,
                            '2025-02-02',
                            2,
                            2
);

insert into tbl_matricula	(	id,
							matricula,
                            data_matricula,
                            id_alunos,
                            id_turmas
						)values(
							4,
                            4,
                            '2025-02-03',
                            5,
                            4
);

insert into tbl_nota	(	id,
							nota1,
                            nota2,
                            nota3,
                            nota4,
                            id_matricula
						)values(
							1,
                            9,
                            10,
                            10,
                            5,
                            1
);

insert into tbl_nota	(	id,
							nota1,
                            nota2,
                            nota3,
                            nota4,
                            id_matricula
						)values(
							2,
                            5,
                            5,
                            10,
                            7,
                            1
);

insert into tbl_nota	(	id,
							nota1,
                            nota2,
                            nota3,
                            nota4,
                            id_matricula
						)values(
							3,
                            8,
                            9.5,
                            10,
                            5,
                            2
);

insert into tbl_nota	(	id,
							nota1,
                            nota2,
                            nota3,
                            nota4,
                            id_matricula
						)values(
							4,
                            8,
                            9,
                            9,
                            5,
                            2
);

insert into tbl_nota	(	id,
							nota1,
                            nota2,
                            nota3,
                            nota4,
                            id_matricula
						)values(
							5,
                            10,
                            10,
                            10,
                            5,
                            2
);

insert into tbl_nota	(	id,
							nota1,
                            nota2,
                            nota3,
                            nota4,
                            id_matricula
						)values(
							6,
                            8,
                            9,
                            8,
                            9,
                            3
);

insert into tbl_nota	(	id,
							nota1,
                            nota2,
                            nota3,
                            nota4,
                            id_matricula
						)values(
							7,
                            8,
                            9,
                            10,
                            9,
                            4
);

insert into tbl_nota	(	id,
							nota1,
                            nota2,
                            nota3,
                            nota4,
                            id_matricula
						)values(
							8,
                            9,
                            10,
                            8,
                            9,
                            4
);


insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							1,
                            'Vanessa.Camargo@gmail.com',
                            1,
                            null
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							2,
                            'LucianoHulk@Outlook.com',
                            2,
                            null
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							3,
                            'Fernanda_Souza@Yahoo.com',
                            3,
                            null
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							4,
                            'Lazaro.Oliveira@hotmail.com',
                            4,
                            null
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							5,
                            'Michael.5Jacksons@Outlook.com',
                            5,
                            null
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							6,
                            'Roberto_00alves@Yahoo.com',
                            6,
                            null
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							7,
                            'Dercy.1950@Hotmail.com',
                            7,
                            null
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							8,
                            'Debora.Silva@Gmail.com',
                            8,
                            null
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							9,
                            'FernandoHC@Gmail.com',
                            9,
                            null
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							10,
                            'Fran.Barbosa@Hotmail.com',
                            10,
                            null
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							11,
                            'Larissa.araujo@Yahoo.com',
                            null,
                            1
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							12,
                            'Marcelo.Pierrot@Hotmail.com',
                            null,
                            2
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							13,
                            'Ingrid_Ferreir4@Terra.com',
                            null,
                            3
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							14,
                            'David.Oliver127@Yahoo.com',
                            null,
                            4
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							15,
                            'Ludwig.Gomes@Yahoo.com',
                            null,
                            5
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							16,
                            'Santos_figaro877@Hotmail.com',
                            null,
                            6
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							17,
                            'Rafael.Fontes@Yahoo.com',
                            null,
                            7
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							18,
                            'Fabio_Camilo@Outlook.com',
                            null,
                            8
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							19,
                            'Cabral.lopes@Yahoo.com',
                            null,
                            9
);

insert into tbl_email	(	id,
							email,
                            id_alunos,
                            id_professores
						)values(
							20,
                            'Camila_Souza@Terra.com',
                            null,
                            10
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							1,
                            '1165222857',
                            '11923894752',
                            1,
                            null
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							2,
                            '1125487301',
                            '11975001510',
                            2,
                            null
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							3,
                            '1940025478',
                            '19945867425',
                            3,
                            null
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							4,
                            '1178960033',
                            '11954998012',
                            4,
                            null
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							5,
                            '1122654789',
                            '11977895214',
                            5,
                            null
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							6,
                            '1135869412',
                            '11920475669',
                            6,
                            null
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							7,
                            '1121365455',
                            '11910102322',
                            7,
                            null
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							8,
                            '1188502033',
                            '11914552341',
                            8,
                            null
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							9,
                            '1164154789',
                            '11986325415',
                            9,
                            null
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							10,
                            '1322254896',
                            '13901475584',
                            10,
                            null
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							11,
                            '1114521455',
                            '11911128469',
                            null,
                            1
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							12,
                            '1240321142',
                            '12910258963',
                            null,
                            2
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							13,
                            '1154789621',
                            '11970236541',
                            null,
                            3
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							14,
                            '1170158630',
                            '11970915243',
                            null,
                            4
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							15,
                            '1714586920',
                            '17985014593',
                            null,
                            5
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							16,
                            '1175302145',
                            '11922546684',
                            null,
                            6
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							17,
                            '1192568412',
                            '11960154832',
                            null,
                            7
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							18,
                            '1140257412',
                            '11982564410',
                            null,
                            8
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							19,
                            '1541527542',
                            '11930226541',
                            null,
                            9
);

insert into tbl_telefone	(	id,
							numero_residencial,
                            telefone_celular,
                            id_alunos,
                            id_professores
						)values(
							20,
                            '1425489630',
                            '11932412950',
                            null,
                            10
);

ALTER TABLE tbl_nota
MODIFY COLUMN nota_final DECIMAL(6,3);


UPDATE tbl_email
SET id_alunos = 6
WHERE id = 6;


select*from tbl_alunos;
select*from tbl_endereco;
select*from tbl_professores;
select*from tbl_cursos;
select*from tbl_disciplinas;
select*from tbl_turmas;
select*from tbl_matricula;
select*from tbl_nota;
select*from tbl_email;
select*from tbl_telefone;

show databases;
drop database db_unifecaf;


