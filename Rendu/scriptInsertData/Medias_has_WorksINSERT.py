def GenerateMedias_has_WorksInsert(numberOfEntries):

    import random

    requete = "insert into Medias_has_Works(Medias_id, Works_id) values\n"
    Works_id = 1
    currentEntries = 0

    while currentEntries < numberOfEntries:

        Medias_id = random.randint(1,9)
            
        requete += "(" + str(Medias_id) + "," + str(Works_id) + "),\n"
        Works_id = Works_id +1
        currentEntries += 1
    
    requete = requete[:-2]
    requete += "\n\n"
    return requete
