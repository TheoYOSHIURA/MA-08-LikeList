def GenerateGenre_has_WorksInsert(numberOfEntries):
    
    import random

    requete = "insert into Genres_has_Works(Genres_id, Works_id) values\n"
    Works_id = 1
    currentEntries = 0

    while currentEntries < numberOfEntries:

        Genres_id = random.randint(1,9)
            
        requete += "(" + str(Genres_id) + "," + str(Works_id) + "),\n"
        Works_id = Works_id + 1
        currentEntries += 1

    requete = requete[:-2]
    requete += "\n\n"
    return requete
