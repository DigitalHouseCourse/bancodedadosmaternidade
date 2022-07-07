create table Mamaes(
	id int primary key identity,
	nome varchar(100) not null
);

create table bebes(
	id int primary key identity,
	id_mamae int,
	nome varchar(100) not null,
	data_nascimento date not null,
	horario_nascimento time not null

	CONSTRAINT FK_MAMAES_BEBES FOREIGN KEY (id_mamae) REFERENCES Mamaes(id)
);

insert into Mamaes(nome)
values 
	('Helena'),
	('Alice'),
	('Laura'),
	('Manuela'),
	('Valentina'),
	('Sophia'),
	('Isabella'),
	('Helo�sa'),
	('Luiza'),
	('J�lia'),
	('Lorena'),
	('L�via'),
	('Maria Luiza'),
	('Cec�lia'),
	('Elo�'),
	('Giovanna'),
	('Maria Clara'),
	('Maria Eduarda'),
	('Mariana'),
	('Lara'),
	('Beatriz'),
	('Antonella'),
	('Maria J�lia'),
	('Emanuelly'),
	('Isadora'),
	('Ana Clara'),
	('Melissa'),
	('Ana Luiza'),
	('Flora')


insert into bebes(nome, id_mamae, data_nascimento, horario_nascimento)
values
	('Miguel', 1,'03/01/2022', '14:00:00'),
	('Arthur', 2,'27/03/2022', '01:00:00'),
	('Th�o',3,'29/03/2022','05:47:00'),
	('Heitor',4,'05/04/2022','02:00:00'),
	('Gael',5,'05/04/2022','02:00:00'),
	('Davi',6,'05/04/2022','02:00:00'),
	('Bernardo',7,'06/05/2022','08:00:00'),
	('Gabriel',8,'15/05/2022','09:00:00'),
	('Ravi',9,'12/07/2022','12:00:00'),
	('Noah',10,'24/07/2022','16:00:00'),
	('Samuel',11,'25/07/2022','16:00:00'),
	('Pedro',12,'26/07/2022','10:00:00'),
	('Ben�cio',13,'29/07/2022','17:42:00'),
	('Benjamin',14,'29/07/2022','18:11:00'),
	('Matheus',15,'01/08/2022','11:11:00'),
	('Isaac',16,'01/08/2022','11:11:00'),
	('Anthony',17,'05/08/2022','11:12:00'),
	('Joaquim',18,'12/08/2022','05:22:00'),
	('Lucas',19,'12/08/2022','08:29:00'),
	('Lorenzo',20,'27/08/2022','08:31:00'),
	('Rafael',21,'27/08/2022','13:14:00'),
	('Nicolas',22,'28/09/2022','13:16:00'),
	('Henrique',23,'30/08/2022','19:01:00'),
	('Murilo',24,'30/08/2022','23:59:00'),
	('Jo�o Miguel',25,'31/08/2022','23:40:00'),
	('Lucca',26,'31/08/2022','23:12:00'),
	('Guilherme',27,'31/08/2022','10:12:00'),
	('Henry',28,'31/08/2022','13:19:00'),
	('Bryan',29,'31/08/2022','12:57:00');


	--Todas os beb�s nascidos entre 01/06/2022 e 30/06/2022.
	select 
		b.nome as 'Nome do beb�',
		b.nome as 'Nome da mam�e',
		b.data_nascimento as 'Data nascimento'
			from bebes b, mamaes m
				where b.data_nascimento
					between '2022-06-01' and '2022-06-30';


	--Todos os beb�s por ordem alfab�tica 					
		select
			b.nome as 'Nome do beb�',
			m.nome as 'Nome da mam�e',
			b.data_nascimento as 'Data nascimento'
				from bebes b, mamaes m
					where
						b.id_mamae = m.id
						and b.data_nascimento
							between '2022-05-01' and '2022-05-30'
								order by b.nome asc;

	--O beb� da mam�e Elo�
		select 
			b.nome as 'Nome do beb�',
			m.nome as 'Nome da mam�e',
			b.data_nascimento as 'Data nascimento'
				from bebes b, mamaes m
					where 
						b.id_mamae = m.id
						and m.nome like 'Elo�';
