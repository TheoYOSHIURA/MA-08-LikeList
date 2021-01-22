def GenerateUsers_has_PostsInsert(numberOfEntries):

    import random

    requete = "insert into Users_has_Posts(Posts_id, Users_id) values\n"
    Users_id = 1
    Posts_id = 1
    currentEntries = 0

    while currentEntries < numberOfEntries:
            
        requete += "(" + str(Posts_id) + "," + str(Users_id) + "),\n"
        Users_id = Users_id + 1
        Posts_id = Posts_id +1
        currentEntries += 1
    
    requete = requete[:-2]
    requete += "\n\n"
    return requete
