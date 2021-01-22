-- CreaDb.SQL
-- Date: Jan 2021
-- Author: A. Ricart
-- Goal : Create structure
---------------------------------------------Start Structure -------------------------------------------------------------
USE master
GO
-- First delete the database if it exists
IF (EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'Likelist'))
BEGIN
	USE master
	ALTER DATABASE Likelist SET SINGLE_USER WITH ROLLBACK IMMEDIATE; -- Disconnect users
	DROP DATABASE Likelist -- Destroy it
END
GO

-- Second ensure we have the proper directory structure
CREATE TABLE #ResultSet (Directory varchar(200))

INSERT INTO #ResultSet EXEC master.sys.xp_subdirs 'c:\'

IF NOT EXISTS (Select * FROM #ResultSet where Directory = 'files')
	EXEC master.sys.xp_create_subdir 'C:\files\'

DELETE FROM #ResultSet
INSERT INTO #ResultSet EXEC master.sys.xp_subdirs 'c:\files'

IF NOT EXISTS (Select * FROM #ResultSet where Directory = 'MSSQL')
	EXEC master.sys.xp_create_subdir 'C:\files\MSSQL'

DROP TABLE #ResultSet
GO

-- Everything is ready, we can create the db
CREATE DATABASE Likelist ON  PRIMARY 
( NAME = 'Likelist_data', FILENAME = 'C:\files\Likelist.mdf' , SIZE = 20480KB , MAXSIZE = 51200KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = 'Likelist_log', FILENAME = 'C:\files\Likelist.ldf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB )
GO
---------------------------------------------End Structure---------------------------------------------------------------
---------------------------------------------Start Table ----------------------------------------------------------------
-- Goal: Create all tables of the ECommerce database

USE Likelist
GO

CREATE TABLE Users(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	password varchar(45) UNIQUE NOT NULL,
	mail varchar(45) UNIQUE NOT NULL,
	username varchar(45) Unique NOT NULL,
	image varchar(45),
	rank INT,
	account_state TINYINT,
	creation_date DATE NOT NULL,
	People_id int  NOT NULL)

CREATE TABLE Messages(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	description VARCHAR(45),
	creation_date DATE NOT NULL,
	Posts_id int  NOT NULL,
	Discussions_id int  NOT NULL,
	Users_id int  NOT NULL
	)

CREATE TABLE Discussions(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	name VARCHAR(45) NOT NULL,
	creation_date DATE NOT NULL,
	Groups_id int  NOT NULL)

CREATE TABLE Groups(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	image varchar(45),
	title VARCHAR(45) NOT NULL,
	description VARCHAR(45),
	creation_date DATE NOT NULL)

CREATE TABLE Groups_has_Users(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Groups_id int  NOT NULL,
	Users_id int  NOT NULL
	)

CREATE TABLE Rights_has_Users(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Rights_id int  NOT NULL,
	Users_id int  NOT NULL
	)

CREATE TABLE Rights(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	name VARCHAR(45) UNIQUE NOT NULL)

CREATE TABLE People(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	firstname VARCHAR(45) NOT NULL,
	name VARCHAR(45) NOT NULL,
	gender VARCHAR(45) NOT NULL,
	birthday DATE,
	UNIQUE(firstname,name))
	
CREATE TABLE People_has_Works(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	People_id int  NOT NULL,
	Works_id int  NOT NULL

	)

CREATE TABLE Users_has_Posts(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Posts_id int  NOT NULL,
	Users_id int  NOT NULL
	)

CREATE TABLE Posts(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	title VARCHAR(45) NOT NULL,
	description VARCHAR(45),
	creation_date DATE NOT NULL, 
	Users_id int  NOT NULL)

CREATE TABLE Works_has_Posts(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Works_id int  NOT NULL,
	Posts_id int  NOT NULL
	)

CREATE TABLE Works(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	title VARCHAR(45) NOT NULL,
	image varchar(45),
	description VARCHAR(45),
	creation_date DATE NOT NULL,
	rating INT)

CREATE TABLE Medias(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	name VARCHAR(45) NOT NULL)

CREATE TABLE Genres(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	name VARCHAR(45) NOT NULL)

CREATE TABLE Medias_has_Works(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Works_id int  NOT NULL,
	Medias_id int  NOT NULL)

CREATE TABLE Genres_has_Works(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Works_id int  NOT NULL,
	Genres_id int  NOT NULL)

-- Contraintes référentielles

ALTER TABLE Users WITH CHECK ADD  CONSTRAINT FK_Users_People FOREIGN KEY(People_id)
REFERENCES People(id)

ALTER TABLE Rights_has_Users WITH CHECK ADD  CONSTRAINT FK_Right_has_Users_Rights FOREIGN KEY(Rights_id)
REFERENCES Rights(id)
ALTER TABLE Rights_has_Users WITH CHECK ADD  CONSTRAINT FK_Right_has_Users_Users FOREIGN KEY(Users_id)
REFERENCES Users(id)

ALTER TABLE Groups_has_Users WITH CHECK ADD  CONSTRAINT FK_Groups_has_Users_Groups FOREIGN KEY(Groups_id)
REFERENCES Groups(id)
ALTER TABLE Groups_has_Users WITH CHECK ADD  CONSTRAINT FK_Groups_has_Users_Users FOREIGN KEY(Users_id)
REFERENCES Users(id)

ALTER TABLE Discussions WITH CHECK ADD  CONSTRAINT FK_Discussions_Groups FOREIGN KEY(Groups_id)
REFERENCES Groups(id)
ON DELETE CASCADE
Go

ALTER TABLE Messages WITH CHECK ADD  CONSTRAINT FK_Messages_Posts FOREIGN KEY(Posts_id)
REFERENCES Posts(id)
ON DELETE CASCADE
Go
ALTER TABLE Messages WITH CHECK ADD  CONSTRAINT FK_Messages_Discussions FOREIGN KEY(Discussions_id)
REFERENCES Discussions(id)
ON DELETE CASCADE
Go
ALTER TABLE Messages WITH CHECK ADD  CONSTRAINT FK_Messages_Users FOREIGN KEY(Users_id)
REFERENCES Users(id)
ON DELETE CASCADE
Go

ALTER TABLE Posts WITH CHECK ADD  CONSTRAINT FK_Posts_Users FOREIGN KEY(Users_id)
REFERENCES Users(id)

ALTER TABLE People_has_Works WITH CHECK ADD  CONSTRAINT FK_People_has_Works_People FOREIGN KEY(People_id)
REFERENCES People(id)
ALTER TABLE People_has_Works WITH CHECK ADD  CONSTRAINT FK_People_has_Works_Works FOREIGN KEY(Works_id)
REFERENCES Works(id)

ALTER TABLE Users_has_Posts WITH CHECK ADD  CONSTRAINT FK_Users_has_Posts_Posts FOREIGN KEY(Posts_id)
REFERENCES Posts(id)
ALTER TABLE Users_has_Posts WITH CHECK ADD  CONSTRAINT FK_Users_has_Posts_Users FOREIGN KEY(Users_id)
REFERENCES Users(id)

ALTER TABLE Works_has_Posts WITH CHECK ADD  CONSTRAINT FK_Works_has_Posts_Works FOREIGN KEY(Works_id)
REFERENCES Works(id)
ALTER TABLE Works_has_Posts WITH CHECK ADD  CONSTRAINT FK_Works_has_Posts_Posts FOREIGN KEY(Posts_id)
REFERENCES Posts(id)

ALTER TABLE Medias_has_Works WITH CHECK ADD  CONSTRAINT FK_Medias_has_Posts_Works FOREIGN KEY(Works_id)
REFERENCES Works(id)
ALTER TABLE Medias_has_Works WITH CHECK ADD  CONSTRAINT FK_Medias_has_Posts_Medias FOREIGN KEY(Medias_id)
REFERENCES Medias(id)

GO
-------------------------------------------End Tables-----------------------------------------------------------------------
--Commentaires Dataedo :
EXECUTE sp_addextendedproperty
		@level0type = N'Schema', @level0name = 'dbo',
		@level1type = N'Table', @level1name = 'Users',
		@name = 'MS_Description', @value='Comptes utilisateurs';

EXECUTE sp_addextendedproperty 
	@level0type = N'Schema', @level0name = 'dbo',  
	@level1type = N'Table', @level1name = 'Users',   
	@level2type = N'Column',@level2name = 'image',
	@name = 'MS_Description', @value='Url des images des utilisateurs';

EXECUTE sp_addextendedproperty
	@level0type = N'Schema', @level0name = 'dbo',  
	@level1type = N'Table', @level1name = 'Users',   
	@level2type = N'Column',@level2name = 'rank',
	@name = 'MS_Description', @value='Donne un niveau d importance à un utilisateur (plus il est élevé => signifie que l utilisateur a des droits spéciaux';

EXECUTE sp_addextendedproperty
	@level0type = N'Schema', @level0name = 'dbo',  
	@level1type = N'Table', @level1name = 'Users',   
	@level2type = N'Column',@level2name = 'account_state',
	@name = 'MS_Description', @value='Donne le niveau du compte (plus il est haut => signifie que l utilisateur aime le site';

EXECUTE sp_addextendedproperty
	@level0type = N'Schema', @level0name = 'dbo',  
	@level1type = N'Table', @level1name = 'People',   
	@level2type = N'Column',@level2name = 'gender',
	@name = 'MS_Description', @value='Homme ou femme ?';



EXECUTE sp_addextendedproperty
	@level0type = N'Schema', @level0name = 'dbo',  
	@level1type = N'Table', @level1name = 'Posts',
	@name = 'MS_Description', @value='message posté sur le site, un poste est visible par tout le monde sur le site, il contient des messages';
	
EXECUTE sp_addextendedproperty
	@level0type = N'Schema', @level0name = 'dbo',  
	@level1type = N'Table', @level1name = 'Rights', 
	@name = 'MS_Description', @value='Droits uniques donné par les administrateurs à un utilisateur';

	
EXECUTE sp_addextendedproperty
	@level0type = N'Schema', @level0name = 'dbo',  
	@level1type = N'Table', @level1name = 'Works',
	@name = 'MS_Description', @value='Oeuvres en question';

EXECUTE sp_addextendedproperty
	@level0type = N'Schema', @level0name = 'dbo',  
	@level1type = N'Table', @level1name = 'Medias',
	@name = 'MS_Description', @value='types du médias utilisé';

EXECUTE sp_addextendedproperty
	@level0type = N'Schema', @level0name = 'dbo',  
	@level1type = N'Table', @level1name = 'Genres',
	@name = 'MS_Description', @value='types de contenu ';
