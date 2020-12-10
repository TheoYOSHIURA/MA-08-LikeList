# Cahier des charges Likelist
## Descriptif
Nous réalisons ce modèle de base de donnée en partant des sites comme [MyAnimeList](https://myanimelist.net/) offrant la possibilité à ses utilisateurs de partager des avis et des réactions sur des oeuvres chères à leurs coeurs. L'utilisateur aura un compte personnel et pourra ainsi suivre d'autres utilisateurs s'il le souhaite.

## Objectifs
La base de donnée comportera des informations variées sur les comptes utilisateurs, les avis postés et les postes. On aura aussi des genres listés par les administrateurs pour identifier une oeuvre. 

En ce qui concerne les utilisateurs:
- un mot de passe
- un mail
- pseudonyme
- une image
- un rang
- un état de compte (actif ou désactivé)
- une liste de followers
- une liste de posts
- une date de création

En ce qui concerne les personnes:
- un prénom
- un nom
- un sexe
- une date de naissance

En ce qui concerne les posts:
- un titre
- une description
- un nombre de likes
- une liste de commentaires
- une note
- un auteur
- une date de création

En ce qui concerne les commentaires:
- une description
- un auteur
- une date de création

En ce qui concerne les oeuvres:
- un titre
- des genres
- une image
- une description
- un auteur
- un média
- une liste de posts
- une date de création
- un âge limite

En ce qui concerne les genres:
- un nom

En ce qui concecerne les groupes:
- une liste de discussions
- une liste de membres
- une liste de commentaires
- une image
- un titre
- une description
- auteur du groupe
- une date de création

En ce qui concerne les discussions
- un nom
- une liste de messages
- un auteur
- une date de création

En ce qui concerne les messages:
- une description
- un auteur
- une date de création

En ce qui concerne les droits:
- un nom