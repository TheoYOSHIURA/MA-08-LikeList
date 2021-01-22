-- Project: Likelist
-- Authors: Alexandre Ricart, Theo Yoshiura
-- Name:    VIEW Likelist.sql
-- Version: 1.0
-- Date:    22.01.2021

USE [Likelist]
GO

CREATE VIEW Likelist
(Discussions, Genres, Genres_has_Works, Groups, Groups_has_Users, Medias, Medias_has_Works, Messages, People, People_has_Works, Rights, Rights_has_Users, Users, Users_has_Posts, Works, Works_has_Posts)
AS SELECT 
(SELECT COUNT('id') FROM Discussions),
(SELECT COUNT('id') FROM Genres),
(SELECT COUNT('id') FROM Genres_has_Works),
(SELECT COUNT('id') FROM Groups),
(SELECT COUNT('id') FROM Groups_has_Users),
(SELECT COUNT('id') FROM Medias),
(SELECT COUNT('id') FROM Medias_has_Works),
(SELECT COUNT('id') FROM Messages),
(SELECT COUNT('id') FROM People),
(SELECT COUNT('id') FROM People_has_Works),
(SELECT COUNT('id') FROM Rights),
(SELECT COUNT('id') FROM Rights_has_Users),
(SELECT COUNT('id') FROM Users),
(SELECT COUNT('id') FROM Users_has_Posts),
(SELECT COUNT('id') FROM Works),
(SELECT COUNT('id') FROM Works_has_Posts)
