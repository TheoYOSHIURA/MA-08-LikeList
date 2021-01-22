def GenerateRights_has_UsersInsert(numberOfEntries):

    import random

    requete = "insert into Rights_has_Users(Rights_id, Users_id) values\n"
    Users_id = 1
    currentEntries = 0

    while currentEntries < numberOfEntries:

        Rights_id = random.randint(1,8)
        
        requete += "(" + str(Rights_id) + "," + str(Users_id) + "),\n"
        Users_id = Users_id + 1
        currentEntries += 1
    
    requete = requete[:-2]
    requete += "\n\n"
    return requete
