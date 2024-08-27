
--CREATING DATABASE AND TABLES FOR CHOLERA OUTBREAK IN NIGERIA --

CREATE DATABASE CHOLERANIGERIA2024
USE CHOLERANIGERIA2024

CREATE TABLE DAILYSTATS(CASEID INT NOT NULL PRIMARY KEY, MONTHS VARCHAR(25) NOT NULL, 
						SUSPECTEDCASES SMALLINT NOT NULL, DEATHS SMALLINT NULL, STATESREPORTING INT NOT NULL)

CREATE TABLE STATES(STATEID INT NOT NULL PRIMARY KEY, MONTH VARCHAR(25) NOT NULL, STATENAME VARCHAR(25) NOT NULL, 
					CASESREPORTED INT NOT NULL, REGION VARCHAR(10))

CREATE TABLE HEALTHPERSONNEL(STAFFID INT NOT NULL PRIMARY KEY, FULLNAME VARCHAR(70) NOT NULL, GENDER VARCHAR(1) NULL, 
					TITLE VARCHAR(25) NULL, REGION VARCHAR(10))

CREATE TABLE PATIENTS(PATIENTID INT NOT NULL PRIMARY KEY, FULLNAME VARCHAR(70) NOT NULL, GENDER VARCHAR(1) NULL, 
					STATE VARCHAR(25))

CREATE TABLE EUVICHOLVACCINE (ITEMID INT NOT NULL PRIMARY KEY, MONTH VARCHAR(10), OPENINGQTY INT NULL, ADDITION INT NULL,
					DISPENSEDQTY INT NULL, CLOSINGQTY INT NULL)

CREATE TABLE PROJECTEXPENSE(EXPENSEID INT NOT NULL PRIMARY KEY, ITEM VARCHAR(50), QTY INT NULL, COST INT NULL)

CREATE TABLE REGIONS(ID INT NOT NULL PRIMARY KEY, NAME VARCHAR(10))


--INSERTING VALUES INTO TABLES--

INSERT INTO DAILYSTATS(CASEID, MONTHS, SUSPECTEDCASES, DEATHS, STATESREPORTING)
						VALUES 
						(1, 'JANUARY2024', 23, 2, 6),
						(2, 'FEBRUARY2024', 37, 6, 12),
						(3, 'MARCH2024', 28, 6, 10),
						(4, 'APRIL2024', 45, 12, 15),
						(5, 'MAY2024', 33, 4, 9),
						(6, 'JUNE2024', 19, 2, 9),
						(7, 'JULY2024', 21, 3, 7),
						(8, 'AUGUST2024', 17, 5, 5);

INSERT INTO STATES(STATEID, MONTH, STATENAME, CASESREPORTED, REGION)	
						VALUES
						(1, 'JANUARY2024', 'TARABA', 9, 'NORTH'),
						(2, 'JANUARY2024', 'JIGAWA', 7, 'NORTH'),
						(3, 'JANUARY2024', 'OGUN', 4, 'WEST'),
						(4, 'JANUARY2024', 'BAYELSA', 3, 'SOUTH'),
						(5, 'FEBRUARY2024', 'KANO', 12, 'NORTH'),
						(6, 'FEBRUARY2024', 'LAGOS', 9, 'WEST'),
						(7, 'FEBRUARY2024', 'IMO', 1, 'EAST'),
						(8, 'FEBRUARY2024', 'RIVERS', 3, 'SOUTH'),
						(9, 'FEBRUARY2024', 'KADUNA', 5, 'NORTH'),
						(10, 'FEBRUARY2024', 'BORNO', 7, 'NORTH'),
						(11, 'MARCH2024', 'KATSINA', 14, 'NORTH'),
						(12, 'MARCH2024', 'LAGOS', 10, 'WEST'),
						(13, 'MARCH2024', 'ABUJA', 4, 'NORTH'),
						(14, 'APRIL2024', 'AKWAIBOM', 6, 'SOUTH'),
						(15, 'APRIL2024', 'KEBBI', 9, 'NORTH'),
						(16, 'APRIL2024', 'OGUN', 11, 'WEST'),
						(17, 'APRIL2024', 'DELTA', 9, 'SOUTH'),
						(18, 'APRIL2024', 'EBONYI', 10, 'EAST'),
						(19, 'MAY2024', 'JIGAWA', 3, 'NORTH'),
						(20, 'MAY2024', 'ABUJA', 4, 'NORTH'),
						(21, 'MAY2024', 'LAGOS', 11, 'WEST'),
						(22, 'MAY2024', 'KWARA', 5, 'WEST'),
						(23, 'MAY2024', 'KADUNA', 7, 'NORTH'),
						(24, 'MAY2024', 'PLATEAU', 3, 'NORTH'),
						(25, 'JUNE2024', 'GOMBE', 12, 'NORTH'),
						(26, 'JUNE2024', 'ABIA', 7, 'EAST'),
						(27, 'JUNE2024', 'RIVERS', 4, 'SOUTH'),
						(28, 'JUNE2024', 'LAGOS', 13, 'WEST'),
						(29, 'JUNE2024', 'EKITI', 4, 'WEST'),
						(30, 'AUGUST2024', 'KANO', 7, 'NORTH'),
						(31, 'AUGUST2024', 'NASSARAWA', 6, 'NORTH'),
						(32, 'AUGUST2024', 'KEBBI', 2, 'NORTH'),
						(33, 'AUGUST2024', 'ENUGU', 2, 'EAST');


INSERT INTO HEALTHPERSONNEL(STAFFID, FULLNAME, GENDER, TITLE, REGION)
						VALUES
						(1, 'GENEVIEVE AMADI', 'F', 'HEALTH INSPECTOR', 'SOUTH'),
						(2, 'OLUWOLE OLADIPO', 'M', 'MEDICAL DIRECTOR', 'WEST'),
						(3, 'JAMES ANUCHA', 'M', 'PUBLIC PROC OFFICER', 'SOUTH'),
						(4, 'JANE ONUOHA', 'F', 'ASSISTANT DIRECTOR', 'EAST'),
						(5, 'KADIRI DANTATA', 'M', 'HEALTH INSPECTOR', 'NORTH'),
						(6, 'AMINA YESUFU', 'F', 'CHIEF NURSE', 'NORTH'),
						(7, 'EMEKA EKE', 'M', 'PUBLIC HEALTH SPECIALIST', 'EAST'),
						(8, 'AMINAT ADEGBOYEGA', 'F', 'MEDICAL DIRECTOR', 'WEST');

INSERT INTO EUVICHOLVACCINE (ITEMID, OPENINGQTY, ADDITION, DISPENSEDQTY, CLOSINGQTY)
						VALUES
						(1, 10000, 3000, 4500, 9500),
						(2, 9500, 3500, 2800, 10200),
						(3, 10200, 4800, 8000, 7000),
						(4, 7000, 7000, 5500, 8500),
						(5, 8500, 7000, 10000, 5500),
						(6, 5500, 20000, 12500, 13000),
						(7, 13000, 6000, 16250, 2750),
						(8, 2750, 15000, 8300, 9450);

INSERT INTO PROJECTEXPENSE(EXPENSEID, ITEM, QTY, COST)
							VALUES
							(1, 'VACCINES', 41000, 102500),
							(2, 'SURVEILLANCE', 0, 30000),
							(3, 'LOGISTICS', 0, 25000),
							(4, 'AWARENESS JINGLES', 0 , 4500),
							(5, 'PROTECTIVE EQUIPMENT', 200000, 55500);


INSERT INTO REGIONS(ID, NAME) VALUES (1, 'NORTH'), (2, 'SOUTH'), (3, 'WEST'), (4, 'EAST');

--ALTERING, UPDATING AND DELETING ROWS AND COLUMNS--

ALTER TABLE DBO.STATES ADD REGIONCODE INT
ALTER TABLE DBO.STATES DROP COLUMN REGION

UPDATE DBO.STATES SET REGIONCODE = 1 WHERE STATENAME IN ('TARABA', 'JIGAWA', 'KANO', 'KADUNA', 'BORNO', 'PLATEAU', 
														'KATSINA', 'KEBBI', 'ABUJA','NASSARAWA', 'GOMBE')

UPDATE DBO.STATES SET REGIONCODE = 2 WHERE STATENAME IN ('BAYELSA', 'RIVERS', 'AKWAIBOM','DELTA')

UPDATE DBO.STATES SET REGIONCODE = 3 WHERE STATENAME IN ('OGUN', 'LAGOS', 'KWARA', 'EKITI')

UPDATE DBO.STATES SET REGIONCODE = 4 WHERE STATENAME IN ('IMO', 'EBONYI', 'ABIA', 'ENUGU')

ALTER TABLE DBO.HEALTHPERSONNEL DROP COLUMN REGION
ALTER TABLE DBO.HEALTHPERSONNEL ADD REGIONCODE INT

UPDATE DBO.HEALTHPERSONNEL SET REGIONCODE = 1 WHERE FULLNAME IN ('AMINA YESUFU', 'KADIRI DANTATA')

UPDATE DBO.HEALTHPERSONNEL SET REGIONCODE = 2 WHERE FULLNAME IN ('GENEVIEVE AMADI', 'JAMES ANUCHA')

UPDATE DBO.HEALTHPERSONNEL SET REGIONCODE = 3 WHERE FULLNAME IN ('OLUWOLE OLADIPO', 'AMINAT ADEGBOYEGA')

UPDATE DBO.HEALTHPERSONNEL SET REGIONCODE = 4 WHERE FULLNAME IN ('JANE ONUOHA', 'EMEKA EKE')

ALTER TABLE DBO.DAILYSTATS DROP COLUMN STATESREPORTING
ALTER TABLE DBO.DAILYSTATS ADD MONTHNUM INT

UPDATE DBO.DAILYSTATS SET MONTHNUM = 1 WHERE MONTHS = 'JANUARY2024'
UPDATE DBO.DAILYSTATS SET MONTHNUM = 2 WHERE MONTHS = 'FEBRUARY2024'
UPDATE DBO.DAILYSTATS SET MONTHNUM = 3 WHERE MONTHS = 'MARCH2024'
UPDATE DBO.DAILYSTATS SET MONTHNUM = 4 WHERE MONTHS = 'APRIL2024'
UPDATE DBO.DAILYSTATS SET MONTHNUM = 5 WHERE MONTHS = 'MAY2024'
UPDATE DBO.DAILYSTATS SET MONTHNUM = 6 WHERE MONTHS = 'JUNE2024'
UPDATE DBO.DAILYSTATS SET MONTHNUM = 7 WHERE MONTHS = 'JULY2024'
UPDATE DBO.DAILYSTATS SET MONTHNUM = 8 WHERE MONTHS = 'AUGUST2024'

ALTER TABLE DBO.STATES ADD MONTHNUM INT

UPDATE DBO.STATES SET MONTHNUM = 1 WHERE MONTH = 'JANUARY2024'
UPDATE DBO.STATES SET MONTHNUM = 2 WHERE MONTH = 'FEBRUARY2024'
UPDATE DBO.STATES SET MONTHNUM = 3 WHERE MONTH = 'MARCH2024'
UPDATE DBO.STATES SET MONTHNUM = 4 WHERE MONTH = 'APRIL2024'
UPDATE DBO.STATES SET MONTHNUM = 5 WHERE MONTH = 'MAY2024'
UPDATE DBO.STATES SET MONTHNUM = 6 WHERE MONTH = 'JUNE2024'
UPDATE DBO.STATES SET MONTHNUM = 7 WHERE MONTH = 'JULY2024'
UPDATE DBO.STATES SET MONTHNUM = 8 WHERE MONTH = 'AUGUST2024'


-- TABLE VIEW--

SELECT * FROM dbo.dailystats

SELECT * FROM dbo.PROJECTEXPENSE

SELECT * FROM dbo.HEALTHPERSONNEL

SELECT * FROM dbo.STATES

SELECT * FROM dbo.regions

SELECT * FROM dbo.EUVICHOLVACCINE
