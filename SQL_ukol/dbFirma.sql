use master
GO
if exists(select * from sys.databases where name = 'Firma')
DROP DATABASE Firma;
GO
CREATE DATABASE Firma;
GO
USE Firma
GO

CREATE TABLE Zamestnanci(
	Id INT IDENTITY PRIMARY KEY,
	Jmeno VARCHAR(30),
	Prijmeni VARCHAR(30),
	ZdravotniPojistovna VARCHAR(20),
	Mesto VARCHAR(30)
)

CREATE TABLE Pozice (
	Id INT IDENTITY PRIMARY KEY,
	NazevPozice VARCHAR(30)
)
go

CREATE TABLE ZamestnanciPozice (
	Id INT IDENTITY PRIMARY KEY,
	IdZamestnance INT,
	IdPozice INT
)

GO

ALTER TABLE ZamestnanciPozice ADD CONSTRAINT IdZamestnance_FK FOREIGN KEY (IdZamestnance) REFERENCES Zamestnanci (Id);

ALTER TABLE ZamestnanciPozice ADD CONSTRAINT IdPozice_FK FOREIGN KEY (IdPozice) REFERENCES Pozice (Id);

--insert into Zamestnanci (Jmeno, Prijmeni, ZdravotniPojistovna, Mesto) values ('Pepa', 'Houska', '207', 'Brno');
--insert into Zamestnanci (Jmeno, Prijmeni, ZdravotniPojistovna, Mesto) values ('Jarda', 'Ležák', '207', 'Praha');
--insert into Zamestnanci (Jmeno, Prijmeni, ZdravotniPojistovna, Mesto) values ('Marcela', 'Vzdálená', '207', 'Ostrava');
--insert into Zamestnanci (Jmeno, Prijmeni, ZdravotniPojistovna, Mesto) values ('Marek', 'Èudlil', '207', 'Plzeò');

--insert into Pozice(NazevPozice) values ('CEO');
--insert into Pozice(NazevPozice) values ('Programátor');
--insert into Pozice(NazevPozice) values ('Asistent');
--insert into Pozice(NazevPozice) values ('Uklízeèka');

--insert into ZamestnanciPozice(IdZamestnance, IdPozice) values (1, 1);
--insert into ZamestnanciPozice(IdZamestnance, IdPozice) values (2, 2);
--insert into ZamestnanciPozice(IdZamestnance, IdPozice) values (3, 3);
--insert into ZamestnanciPozice(IdZamestnance, IdPozice) values (4, 2);

--GO

--select * from Zamestnanci;
--select * from Pozice;
--select * from ZamestnanciPozice;

--select z.Jmeno, z.Prijmeni, p.NazevPozice from ZamestnanciPozice as zp 
--inner join Zamestnanci as z on zp.IdZamestnance = z.Id 
--inner join Pozice as p on zp.IdPozice = p.Id
--where p.NazevPozice = 'Programátor';

