-- Project: Likelist
-- Authors: Alexandre Ricart, Theo Yoshiura
-- Name:    SelectDatabase Likelist.sql
-- Version: 1.0
-- Date:    22.01.2021

USE [Likelist]
GO

/*Selects all Works with his Genres*/
SELECT Works.title as Titre, Medias.name as type_de_media
FROM Medias_has_Works
Left join Medias on Medias_has_Works.Medias_id = Medias.id
Right join Works on Medias_has_Works.Works_id = Works.id;

/*Selects all Kings with rights 'Kings' with name */
SELECT Rights.name as droit_accordé, Users.username as nom
FROM Rights_has_Users
Left join Rights on Rights_has_Users.Rights_id = Rights.id
Right join Users on Rights_has_Users.Users_id = Users.id
WHERE Rights.name = 'Roi';

/*Selects all Messages create From a discussion with the name of the user and in wich post he is*/
SELECT Users.username, Posts.title, Messages.description, Discussions.creation_date
FROM Messages
LEFT JOIN Posts ON Messages.Posts_id = Posts.id
LEFT JOIN Users ON Messages.Users_id = Users.id
LEFT JOIN Discussions ON Messages.Discussions_id = Discussions.id

/*Selects all clients*/
SELECT username from Users;

/*Selects all People account name*/
SELECT firstname from People;