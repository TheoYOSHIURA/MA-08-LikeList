def GeneratePeople_has_UsersInsert(numberOfEntries):

    import random

    requete = "insert into People_has_Works(People_id, Works_id) values\n"
    People_id = 1
    Works_id = 1
    currentEntries = 0

    while currentEntries < numberOfEntries:
            
        requete += "(" + str(People_id) + "," + str(Works_id) + "),\n"
        People_id = Works_id + 1
        Works_id = Works_id +1
        currentEntries += 1
	
    requete = requete[:-2]
    requete += "\n\n"
    return requete
