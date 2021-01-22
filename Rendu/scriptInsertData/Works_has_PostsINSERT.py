def GenerateWorks_has_PostsInsert(numberOfEntries):
    
    import random

    requete = "insert into Works_has_Posts(Works_id, Posts_id) values\n"
    Works_id = 1
    Posts_id = 1
    currentEntries = 0

    while currentEntries < numberOfEntries:

        requete += "(" + str(Works_id) + "," + str(Posts_id) + "),\n"
        Works_id = Works_id + 1
        Posts_id = Posts_id +1
        currentEntries += 1
	
    requete = requete[:-2]
    requete += "\n\n"
    return requete
