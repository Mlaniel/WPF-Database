DROP TABLE IF EXISTS Manager;
DROP TABLE IF EXISTS Mitarbeiter;
DROP TABLE IF EXISTS Abteilung;
DROP TABLE IF EXISTS Tasks;
DROP TABLE IF EXISTS Gehalt;

CREATE TABLE Gehalt (
	gKlasse		SMALLINT PRIMARY KEY,
	gBeschr		VARCHAR(16),
	gGehalt		INTEGER not null
	); 
	
CREATE TABLE Tasks(
    tNummer     SMALLINT PRIMARY KEY,
    tBeschr		VARCHAR(16)
    );

CREATE TABLE Abteilung(
    aNummer		SMALLINT PRIMARY KEY,
    aBeschr		VARCHAR(16)
    );

CREATE TABLE Mitarbeiter(
	mitNummer	SMALLINT PRIMARY KEY,
	mVorname	VARCHAR(16) not null, 
	mNachname	VARCHAR(16) not null,
	gKlasse		SMALLINT REFERENCES Gehalt,
	aNummer		SMALLINT REFERENCES Abteilung,
	tNummer     SMALLINT REFERENCES Tasks
	);
	
CREATE TABLE Manager (
	manNummer	SMALLINT PRIMARY KEY,
	mitNummer	SMALLINT REFERENCES Mitarbeiter,
	);

	
	
-- Gehalt
INSERT INTO Gehalt VALUES (1, 'CEO', 10000);
INSERT INTO Gehalt VALUES (2, 'FF', 5000);
INSERT INTO Gehalt VALUES (3, 'Werkvertrag', 2000);

--Abteilung
INSERT INTO Abteilung VALUES (1, 'Geschäftsführung');
INSERT INTO Abteilung VALUES (2, 'Finanzwesen');
INSERT INTO Abteilung VALUES (3, 'Forschung');
INSERT INTO Abteilung VALUES (4, 'Produktion');

--Tasks
INSERT INTO Tasks VALUES (1, 'Leitung');
INSERT INTO Tasks VALUES (2, 'Buchhaltung');
INSERT INTO Tasks VALUES (3, 'Entwicklung');
INSERT INTO Tasks VALUES (4, 'Produktion');

-- Mitarbeiter
INSERT INTO Mitarbeiter VALUES (1, 'Fabian', 'Blake',	1,	1,	1);
INSERT INTO Mitarbeiter VALUES (2, 'Thamia', 'Jakobs',	2,	3,	3);
INSERT INTO Mitarbeiter VALUES (3, 'Stefan', 'Fober',	2,	2,	1); 
INSERT INTO Mitarbeiter VALUES (4, 'Justus', 'Goller',	3,	2,	2);
INSERT INTO Mitarbeiter VALUES (5, 'Harald', 'Neubauer', 3,	3,	3);
INSERT INTO Mitarbeiter VALUES (6, 'Konstantin', 'Seger',2,	3,	1);
INSERT INTO Mitarbeiter VALUES (7, 'Paolo', 'Tollmer',	3,	4,	3);
INSERT INTO Mitarbeiter VALUES (8, 'Erich', 'Westerbruck',3,	4,	4);
INSERT INTO Mitarbeiter VALUES (9, 'Wolfgang', 'Bank',	3,	4,	4);
INSERT INTO Mitarbeiter VALUES (10, 'Jochen', 'Ullner',	2,	4,	1);

--Manager
INSERT INTO Manager VALUES (1, 01);
INSERT INTO Manager VALUES (2, 03);
INSERT INTO Manager VALUES (3, 04);
INSERT INTO Manager VALUES (4, 10);